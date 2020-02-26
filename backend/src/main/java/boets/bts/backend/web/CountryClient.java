package boets.bts.backend.web;

import boets.bts.backend.web.dto.CountryDto;
import boets.bts.backend.web.dto.LeagueDto;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class CountryClient {

    private Logger logger = LoggerFactory.getLogger(CountryClient.class);

    public List<CountryDto> getAllCountries() {
        //1. make call
        OkHttpClient client = new OkHttpClient();
        String url = WebUtils.buildUrl("countries");
        Request request = WebUtils.createRequest(url);
        try {
            Response response = client.newCall(request).execute();
            if(response.isSuccessful()) {
                //2. parse data
                JsonArray countries = parseAllCountriesRawJson(response.body().string());
                //3. map data to dto
                return mapJsonToCountryDto(countries);
            }
        } catch (IOException e) {
            logger.warn("Exception on calling retrieveAllLeagues" + e);
        }
        return Collections.EMPTY_LIST;
    }

    private JsonArray parseAllCountriesRawJson(String jsonAsString) {
        JsonElement jsonElement = JsonParser.parseString(jsonAsString);
        JsonObject jsonObject = jsonElement.getAsJsonObject();
        JsonObject api =  jsonObject.getAsJsonObject("api");
        return api.getAsJsonArray("countries");
    }

    private List<CountryDto> mapJsonToCountryDto(JsonArray jsonArray) {
        List<CountryDto> dtos = new ArrayList<>();
        for(JsonElement leagueJsonElement : jsonArray) {
            JsonObject leagueJson = leagueJsonElement.getAsJsonObject();
            if(!leagueJson.get("code").isJsonNull()) {
                CountryDto dto = new CountryDto();
                dto.setCountry(leagueJson.get("country").getAsString());
                dto.setCountryCode(leagueJson.get("code").getAsString());
                if(!leagueJson.get("flag").isJsonNull()) {
                    dto.setFlag(leagueJson.get("flag").getAsString());
                }
                dtos.add(dto);
            }
        }
        return dtos;
    }

}
