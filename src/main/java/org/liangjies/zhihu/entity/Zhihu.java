package org.liangjies.zhihu.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (Zhihu)实体类
 *
 * @author liangjies
 * @since 2020-03-30 00:30:52
 */
public class Zhihu implements Serializable {
    private static final long serialVersionUID = -30045417243997915L;
    
    private Integer id;
    
    private Integer question;
    
    private Integer answer;
    
    private String title;
    
    private Object content;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuestion() {
        return question;
    }

    public void setQuestion(Integer question) {
        this.question = question;
    }

    public Integer getAnswer() {
        return answer;
    }

    public void setAnswer(Integer answer) {
        this.answer = answer;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }

}