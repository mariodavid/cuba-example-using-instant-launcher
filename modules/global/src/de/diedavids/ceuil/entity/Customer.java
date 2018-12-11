package de.diedavids.ceuil.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.Lookup;
import com.haulmont.cuba.core.entity.annotation.LookupType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@NamePattern("%s|name")
@Table(name = "CEUIL_CUSTOMER")
@Entity(name = "ceuil$Customer")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = 7512717902123324106L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "FIRST_NAME")
    protected String firstName;

    @Lookup(type = LookupType.DROPDOWN, actions = {"lookup", "open"})
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CATEGORY_ID")
    protected CustomerCategory category;

    public void setCategory(CustomerCategory category) {
        this.category = category;
    }

    public CustomerCategory getCategory() {
        return category;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }


}