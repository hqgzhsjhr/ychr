package com.yc.bean;

import java.io.Serializable;

public class ConfigPrimaryKey  implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -9020819554041830582L;

	private Short prkId;

    private String primaryKeyTable;

    private String primaryKey;

    private String keyName;

    private Boolean primaryKeyStatus;

    public Short getPrkId() {
        return prkId;
    }

    public void setPrkId(Short prkId) {
        this.prkId = prkId;
    }

    public String getPrimaryKeyTable() {
        return primaryKeyTable;
    }

    public void setPrimaryKeyTable(String primaryKeyTable) {
        this.primaryKeyTable = primaryKeyTable == null ? null : primaryKeyTable.trim();
    }

    public String getPrimaryKey() {
        return primaryKey;
    }

    public void setPrimaryKey(String primaryKey) {
        this.primaryKey = primaryKey == null ? null : primaryKey.trim();
    }

    public String getKeyName() {
        return keyName;
    }

    public void setKeyName(String keyName) {
        this.keyName = keyName == null ? null : keyName.trim();
    }

    public Boolean getPrimaryKeyStatus() {
        return primaryKeyStatus;
    }

    public void setPrimaryKeyStatus(Boolean primaryKeyStatus) {
        this.primaryKeyStatus = primaryKeyStatus;
    }
}