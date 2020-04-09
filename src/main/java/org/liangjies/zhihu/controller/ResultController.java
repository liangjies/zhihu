package org.liangjies.zhihu.controller;

import lombok.Data;
import org.apache.log4j.Logger;
import org.liangjies.zhihu.entity.Zhihu;
import org.liangjies.zhihu.service.ZhihuService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import javax.servlet.http.HttpServletRequest;
import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class ResultController {
    @Resource
    private ZhihuService zhihuService;

    private static Pattern pattern = Pattern.compile("(\\d+)(/answer/)(\\d+)");

    private static Logger logger = Logger.getLogger(ResultController.class);

    @Data
    static class Notice {
        private String code;
        private String message;
    }

    @GetMapping("results")
    public String index(Model model, @RequestParam("q") String q, HttpServletRequest request) throws UnsupportedEncodingException {
        q = URLDecoder.decode(request.getParameter("q"),"UTF-8");
//        logger.info("打印日志");
//        logger.info(q);
        Matcher matcher = pattern.matcher(q);
        int question = 0;
        int answer = 0;
        while (matcher.find()) {
            question = Integer.parseInt(matcher.group(1));
            answer = Integer.parseInt(matcher.group(3));
        }
        logger.info(question);
        logger.info(answer);
        if(question == 0 && answer == 0){
            return "404";
        }
        Zhihu zhihu = zhihuService.queryByAnswer(answer);
        if (zhihu!=null){
            model.addAttribute("url", q);
            model.addAttribute("title",zhihu.getTitle());
            model.addAttribute("content",zhihu.getContent());
        }else{
            Map<String, Object> uriVariables = new HashMap<String, Object>();
            uriVariables.put("question", question);
            uriVariables.put("answer", answer);
            uriVariables.put("url", q);

            RestTemplate restTemplate = new RestTemplate();
            ResponseEntity<Notice> responseEntity = restTemplate.getForEntity("http://127.0.0.1:8102/spyder?question={question}&answer={answer}&url={url}", Notice.class, uriVariables);
            logger.info("打印日志");
            logger.info(responseEntity.getBody());
            if(responseEntity.getBody().getCode().equals("200")){
                logger.info("更新");
                Zhihu zhihu2 = zhihuService.queryByAnswer(answer);
                model.addAttribute("url", q);
                model.addAttribute("title",zhihu2.getTitle());
                model.addAttribute("content",zhihu2.getContent());
            }else{
                //返回错误页面，跳转首页
            }

        }
        return "result";
    }


    @GetMapping("/m/results")
    public String results(Model model, @RequestParam("q") String q, HttpServletRequest request) throws UnsupportedEncodingException {
        q = URLDecoder.decode(request.getParameter("q"),"UTF-8");
//        logger.info("打印日志");
//        logger.info(q);
        Matcher matcher = pattern.matcher(q);
        int question = 0;
        int answer = 0;
        while (matcher.find()) {
            question = Integer.parseInt(matcher.group(1));
            answer = Integer.parseInt(matcher.group(3));
        }
        if(question == 0 && answer == 0){
            return "404";
        }
        Zhihu zhihu = zhihuService.queryByAnswer(answer);
        if (zhihu!=null){
            model.addAttribute("url", q);
            model.addAttribute("title",zhihu.getTitle());
            model.addAttribute("content",zhihu.getContent());
        }else{
            Map<String, Object> uriVariables = new HashMap<String, Object>();
            uriVariables.put("question", question);
            uriVariables.put("answer", answer);
            uriVariables.put("url", q);

            RestTemplate restTemplate = new RestTemplate();
            ResponseEntity<Notice> responseEntity = restTemplate.getForEntity("http://127.0.0.1:8102/spyder?question={question}&answer={answer}&url={url}", Notice.class, uriVariables);
            logger.info("打印日志");
            logger.info(responseEntity.getBody());
            if(responseEntity.getBody().getCode().equals("200")){
                logger.info("更新");
                Zhihu zhihu2 = zhihuService.queryByAnswer(answer);
                model.addAttribute("url", q);
                model.addAttribute("title",zhihu2.getTitle());
                model.addAttribute("content",zhihu2.getContent());
            }else{
                //返回错误页面，跳转首页
            }

        }
        return "mobile";
    }
}
