package boets.bts.backend.service.standing;

import boets.bts.backend.domain.League;
import boets.bts.backend.domain.Round;
import boets.bts.backend.service.AdminService;
import boets.bts.backend.service.standing.retriever.ActualRoundValidSeasonStandingRetriever;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDate;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class ActualRoundValidSeasonStandingRetrieverTest {

    @InjectMocks
    private ActualRoundValidSeasonStandingRetriever actualRoundValidSeasonStandingRetriever;

    @Mock
    private AdminService adminService;

    @Test
    public void accept_givenValidSeasonActualRound_shouldReturnTrue() {
        LocalDate startSeason = LocalDate.of(2021, 8, 9);
        League league = League.LeagueBuilder.aLeague().withSeason(2021).withStartSeason(startSeason).build();
        Round currentRound = Round.RoundBuilder.aRound().withRoundNumber(3).build();
        when(adminService.getCurrentSeason()).thenReturn(2021);
        assertThat(actualRoundValidSeasonStandingRetriever.accept(league, currentRound, 3)).isTrue();
    }

    @Test
    public void accept_givenValidSeasonNotActualRound_shouldReturnFalse() {
        LocalDate startSeason = LocalDate.of(2021, 8, 9);
        League league = League.LeagueBuilder.aLeague().withSeason(2021).withStartSeason(startSeason).build();
        Round currentRound = Round.RoundBuilder.aRound().withRoundNumber(3).build();
        when(adminService.getCurrentSeason()).thenReturn(2021);
        assertThat(actualRoundValidSeasonStandingRetriever.accept(league, currentRound, 2)).isFalse();
    }

    @Test
    public void accept_givenNotValidSeasonActualRound_shouldReturnFalse() {
        LocalDate startSeason = LocalDate.of(2020, 8, 9);
        League league = League.LeagueBuilder.aLeague().withStartSeason(startSeason).build();
        Round currentRound = Round.RoundBuilder.aRound().withRoundNumber(3).build();
        when(adminService.getCurrentSeason()).thenReturn(2021);
        assertThat(actualRoundValidSeasonStandingRetriever.accept(league, currentRound, 3)).isFalse();
    }

    @Test
    public void accept_givenValidSeasonNotStartedActualRound_shouldReturnFalse() {
        LocalDate startSeason = LocalDate.of(2025, 8, 9);
        League league = League.LeagueBuilder.aLeague().withSeason(2025).withStartSeason(startSeason).build();
        Round currentRound = Round.RoundBuilder.aRound().withRoundNumber(3).build();
        when(adminService.getCurrentSeason()).thenReturn(2025);
        assertThat(actualRoundValidSeasonStandingRetriever.accept(league, currentRound, 3)).isFalse();
    }

}