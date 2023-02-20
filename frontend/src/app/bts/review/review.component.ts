import {Component, OnInit} from "@angular/core";
import {combineLatest, EMPTY, Observable, Subject} from "rxjs";
import {GeneralError} from "../domain/generalError";
import {Forecast} from "../domain/forecast";
import {ForecastService} from "../forecast/forecast.service";
import {catchError, map, switchMap, tap} from "rxjs/operators";
import {League} from "../domain/league";
import * as _ from 'underscore';
import {ForecastUtility} from "../common/forecastUtility";
import {AlgorithmService} from "../algorithm/algorithm.service";
import {Algorithm} from "../domain/algorithm";
import {ForecastDetail} from "../domain/forecastDetail";
import {LeagueService} from "../league/league.service";
import {Round} from "../domain/round";
import {RoundService} from "../round/round.service";

@Component({
    selector: 'bts-review',
    templateUrl: './review.component.html',
    styleUrls: ['../forecast/forecast.css']
})
export class ReviewComponent implements OnInit {

    private errorMessageSubject = new Subject<GeneralError>();
    errorMessage$ = this.errorMessageSubject.asObservable();

    // forecast data
    forecastUtility: ForecastUtility;
    public forecastForRoundAndLeague$: Observable<Forecast>;


    // leagues
    public leagues$: Observable<League[]>;
    public selectedLeague: League;
    private selectedLeagueSubject = new Subject<League>();
    selectedLeagueAction = this.selectedLeagueSubject.asObservable();

    // rounds
    public rounds$: Observable<Round[]>;
    public selectedRound: Round;
    private selectedRoundSubject = new Subject<Round>();
    selectedRoundAction = this.selectedRoundSubject.asObservable();

    // algorithm
    public algorithms$: Observable<Algorithm[]>;
    public selectedAlgorithm: Algorithm;
    private selectedAlgorithmSubject = new Subject<Algorithm>();
    selectedAlgorithmAction = this.selectedAlgorithmSubject.asObservable();
    public currentAlgorithm: Algorithm;
    public displayWarningMessage: boolean;
    public warningForecastDetail: ForecastDetail;

    columns: any[];

    constructor(private forecastService: ForecastService, private algorithmService: AlgorithmService,
                private leagueService: LeagueService, private roundService: RoundService) {
        this.forecastUtility = ForecastUtility.getInstance();
        this.displayWarningMessage = false;
    }

    ngOnInit(): void {
        // 1. get all algorithms + select current
        this.algorithms$ = this.algorithmService.getAlgorithms()
            .pipe(
                tap(algorithms => {
                    for(const algorithm of algorithms) {
                        if (algorithm.current) {
                            this.selectedAlgorithm = algorithm;
                            this.selectedAlgorithmSubject.next(algorithm);
                        }
                    }
                }),
                catchError(err => {
                    this.errorMessageSubject.next(err);
                    return EMPTY;
                }));

        //2. get all leagues
        this.leagues$ = this.leagueService.leagues$.pipe(
            tap(leagues => {
                this.selectedLeague  = _.first(leagues);
                this.selectedLeagueSubject.next(this.selectedLeague);
            }));

        //3.  get all review rounds for selected league
        this.rounds$ = this.selectedLeagueAction.pipe(
            switchMap(() => this.forecastService.getAllReviewRounds(+this.selectedLeague.league_id)),
            tap(rounds => {
               this.selectedRound = _.last(rounds);
               this.selectedRoundSubject.next(this.selectedRound);
            }),
            catchError(err => {
                this.errorMessageSubject.next(err);
                return EMPTY;
            })
        );

        //get forecast for selected league and round and algorithm
        combineLatest(
            [this.selectedAlgorithmAction, this.selectedLeagueAction, this.selectedRoundAction]
        ).pipe(
            map(([algorithm, league, round]) => {
                return this.forecastService.getReviewForecastsForAlgorithmRoundAndLeague(algorithm.algorithm_id, +league.league_id, +round.playRound)
            }),
            catchError(err => {
                this.errorMessageSubject.next(err);
                return EMPTY;
            })).subscribe((forecasts) => {
                this.forecastForRoundAndLeague$ = forecasts;
            });
    }

    public onAlgorithmChange() {
        this.selectedAlgorithmSubject.next(this.selectedAlgorithm);
    }

    public onLeagueChange() {
        this.selectedLeagueSubject.next(this.selectedLeague);
    }

    public onRoundChange() {
        this.selectedRoundSubject.next(this.selectedRound);
    }



    public sortRound(rounds: Round[]) {
        return rounds.sort((n1, n2) => +n2.playRound - +n1.playRound);

    }
    private handleChange(forecastDetails: ForecastDetail[]): ForecastDetail[] {
        forecastDetails.sort((n1, n2) => n2.finalScore - n1.finalScore);
        return forecastDetails;
    }


    public determineHomeTeamColor(forecastDetail: ForecastDetail): string {
        if (this.needColorValue(forecastDetail)) {
            if (forecastDetail.nextGame.goalsHomeTeam > forecastDetail.nextGame.goalsAwayTeam) {
                return 'background-color:#20d077';
            } else {
                return 'background-color:#ef6262';
            }
        }

        return 'background-color:transparent'
    }

    public determineAwayTeamColor(forecastDetail: ForecastDetail): string {
        if (this.needColorValue(forecastDetail)) {
            if (forecastDetail.nextGame.goalsAwayTeam > forecastDetail.nextGame.goalsHomeTeam) {
                return 'background-color:#20d077';
            } else {
                return 'background-color:#ef6262';
            }
        }

        return 'background-color:transparent'
    }

    private needColorValue(forecastDetail: ForecastDetail): boolean {
        if (forecastDetail.finalScore >= this.selectedAlgorithm.threshold) {
            return true;
        }
        return false;
    }

    showWarningMessage(forecastDetail: ForecastDetail) {
        this.displayWarningMessage = true;
        this.warningForecastDetail = forecastDetail;
    }


}
