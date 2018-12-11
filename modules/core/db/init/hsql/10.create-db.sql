-- begin CEUIL_CUSTOMER
create table CEUIL_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    FIRST_NAME varchar(255),
    CATEGORY_ID varchar(36),
    --
    primary key (ID)
)^
-- end CEUIL_CUSTOMER
-- begin CEUIL_CUSTOMER_CATEGORY
create table CEUIL_CUSTOMER_CATEGORY (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    CODE varchar(255),
    --
    primary key (ID)
)^
-- end CEUIL_CUSTOMER_CATEGORY
