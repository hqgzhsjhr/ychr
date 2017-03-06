package com.yc.bean;

import java.io.Serializable;

public class Users  implements Serializable{
	private static final long serialVersionUID = 6165001991573681289L;

	private Short uId;

    private String uName;

    private String role;

    private String uTrueName;

    private String uPassword;

    public Short getuId() {
        return uId;
    }

    public void setuId(Short uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

    public String getuTrueName() {
        return uTrueName;
    }

    public void setuTrueName(String uTrueName) {
        this.uTrueName = uTrueName == null ? null : uTrueName.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }
}