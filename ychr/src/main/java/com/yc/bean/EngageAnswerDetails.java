package com.yc.bean;

import java.io.Serializable;

public class EngageAnswerDetails  implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -8892908868875507242L;

	private Short andId;

    private String answerNumber;

    private Short subjectId;

    private String answer;

    public Short getAndId() {
        return andId;
    }

    public void setAndId(Short andId) {
        this.andId = andId;
    }

    public String getAnswerNumber() {
        return answerNumber;
    }

    public void setAnswerNumber(String answerNumber) {
        this.answerNumber = answerNumber == null ? null : answerNumber.trim();
    }

    public Short getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Short subjectId) {
        this.subjectId = subjectId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }
}