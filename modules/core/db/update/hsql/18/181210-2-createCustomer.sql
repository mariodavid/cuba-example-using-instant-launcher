alter table CEUIL_CUSTOMER add constraint FK_CEUIL_CUSTOMER_ON_CATEGORY foreign key (CATEGORY_ID) references CEUIL_CUSTOMER_CATEGORY(ID);
create index IDX_CEUIL_CUSTOMER_ON_CATEGORY on CEUIL_CUSTOMER (CATEGORY_ID);