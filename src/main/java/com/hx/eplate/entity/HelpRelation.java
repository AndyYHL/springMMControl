package com.hx.eplate.entity;

/**
 * Created by Administrator on 2017-04-27.
 */
public class HelpRelation {
    //
    private Integer helpTopicId;
    //
    private Integer helpKeywordId;

    public void setHelpTopicId(Integer helpTopicId){
        this.helpTopicId = helpTopicId;
    }

    public Integer getHelpTopicId(){
        return this.helpTopicId;
    }

    public void setHelpKeywordId(Integer helpKeywordId){
        this.helpKeywordId = helpKeywordId;
    }

    public Integer getHelpKeywordId(){
        return this.helpKeywordId;
    }
}
