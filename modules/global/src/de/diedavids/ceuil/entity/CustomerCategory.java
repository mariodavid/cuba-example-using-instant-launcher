package de.diedavids.ceuil.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|name")
@Table(name = "CEUIL_CUSTOMER_CATEGORY")
@Entity(name = "ceuil$CustomerCategory")
public class CustomerCategory extends StandardEntity {
    private static final long serialVersionUID = -1861663054165712896L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "CODE")
    protected String code;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }


}