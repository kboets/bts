import {Component, OnInit} from "@angular/core";
import {LeagueService} from "../league/league.service";
import {catchError} from "rxjs/operators";
import {EMPTY} from "rxjs";
import {GeneralError} from "../domain/generalError";
import {Rounds} from "../domain/rounds";
import {ResultService} from "./result.service";
import {League} from "../domain/league";
import {Result} from "../domain/result";

@Component({
    selector: 'bts-results',
    templateUrl: './results.components.html'
})
export class ResultsComponent implements OnInit {
    error: GeneralError;

    private currentRound : Rounds;
    private results : Result[];
    private currentRoundString: string;



    constructor(private resultService: ResultService, private leagueService: LeagueService) {
    }

    selectedLeaguesWithCountries$ = this.leagueService.selectedLeaguesWithCountries$
        .pipe(
            catchError(err => {
                this.error = err;
                return EMPTY;
            })
        );

    errorMessage$ = this.resultService.errorMessage$
        .pipe(
            catchError(err => {
                this.error = err;
                return EMPTY;
            })
        );


    ngOnInit(): void {
    }

    toggleResult(league_id: string) {
        this.resultService.getAllResultForLeague(+league_id)
            .subscribe((data: Result[]) => this.results = data);

        this.resultService.getCurrentRoundForLeague(+league_id)
            .subscribe(
                (result: Rounds) =>  this.currentRound = result);
    }

    getCurrentRoundString(round : Rounds): string {
        console.log('current round ' +round.round);
        return this.resultService.getCurrentRound(round.round);
    }


}
