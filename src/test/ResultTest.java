import lombok.Data;
import org.junit.Test;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class ResultTest {
    @Data
    static class Notice {
        private String code;
        private String message;
    }


    @Test
    public void restTemplateGetTest(){
        //RestTemplate restTemplate = new RestTemplate();
        //ResponseEntity<Notice> responseEntity = restTemplate.getForEntity("http://localhost:8888/spyder?url={url}", Notice.class,"http://");
        //System.out.println(responseEntity.getBody());
//        String result2 = responseEntity.getBody();
//        System.out.println(result2);

    }
}
