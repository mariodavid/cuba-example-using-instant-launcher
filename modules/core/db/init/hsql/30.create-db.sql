----------------------------------------------------------------------------------------------------
-- Customer Categories
----------------------------------------------------------------------------------------------------
insert into CEUIL_CUSTOMER_CATEGORY
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CODE)
values ('dbdab7ef-b495-2301-d61a-cb0abbe21cdd', 1, '2018-12-11 18:17:24', 'admin', '2018-12-11 18:17:24', null, null, null, 'Regular', 'Regular');
insert into CEUIL_CUSTOMER_CATEGORY
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CODE)
values ('c05122c9-4b41-73d1-7888-3f1960901dc5', 1, '2018-12-11 18:17:18', 'admin', '2018-12-11 18:17:18', null, null, null, 'VIP', 'VIP');
insert into CEUIL_CUSTOMER_CATEGORY
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CODE)
values ('3bd9a199-d9ed-f4f2-5ef2-791f5c1e8e1e', 1, '2018-12-11 18:17:29', 'admin', '2018-12-11 18:17:29', null, null, null, 'Cool', 'cool');


----------------------------------------------------------------------------------------------------
-- Launcher Commands
----------------------------------------------------------------------------------------------------

-- generate customer via Bean

insert into DDCIL_LAUNCHER_CMD
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, GROUP_ID, DESCRIPTION, TYPE_)
values ('LAUNCHER', '6d801dca-bfb4-ae92-9c9d-e03799884627', 1, '2018-12-11 18:17:02', 'admin', '2018-12-11 18:17:02', null, null, null, 'Generate Customer', null, null, 'BEAN_LAUNCHER');
insert into DDCIL_BEAN_LAUNCHER_COMMAND
(ID, BEAN_NAME)
values ('6d801dca-bfb4-ae92-9c9d-e03799884627', 'ceuil_GenerateCustomerLauncherCommandExecutor');

insert into DDCIL_LAUNCHER_CMD_TRANSLATION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOCALE_, TEXT, LAUNCHER_COMMAND_ID)
values ('101887d6-ba52-522d-1a7a-f0ae93556852', 1, '2018-12-11 18:17:02', 'admin', '2018-12-11 18:17:02', null, null, null, en, 'Generate Customer', '6d801dca-bfb4-ae92-9c9d-e03799884627');


-- Create user

insert into DDCIL_LAUNCHER_CMD
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, GROUP_ID, DESCRIPTION, TYPE_)
values ('SCREEN_LAUNCHER', 'bff6aa39-b667-6cfd-6cd8-c88a13d17469', 3, '2018-12-11 19:41:22', 'admin', '2018-12-11 19:45:49', 'admin', null, null, 'Create User', '5108f1ad-26bb-7efe-c55e-d70f72a46bae', null, 'SCREEN_LAUNCHER');
insert into DDCIL_SCREEN_LAUNCHER_CMD
(ID, SCREEN_ID, SCREEN_LAUNCHER_COMMAND_TYPE, SCREEN_PARAMETERS_SCRIPT, OPEN_TYPE, SCREEN_ENTITY)
values ('bff6aa39-b667-6cfd-6cd8-c88a13d17469', 'sec$User.edit', 'EDITOR', null, 'DIALOG', 'sec$User');

insert into DDCIL_LAUNCHER_CMD_TRANSLATION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOCALE_, TEXT, LAUNCHER_COMMAND_ID)
values ('938bfe06-f3b4-b4f3-567d-5f658a27f73a', 1, '2018-12-11 19:43:02', 'admin', '2018-12-11 19:43:02', null, null, null, en, 'Create User', 'bff6aa39-b667-6cfd-6cd8-c88a13d17469');
insert into DDCIL_LAUNCHER_CMD_TRANSLATION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOCALE_, TEXT, LAUNCHER_COMMAND_ID)
values ('f4910584-a8d9-f436-c592-0fd5a27c37ec', 1, '2018-12-11 19:45:49', 'admin', '2018-12-11 19:45:49', null, null, null, en, 'Gimme a user', 'bff6aa39-b667-6cfd-6cd8-c88a13d17469');


-- Tell me a Joke
insert into DDCIL_LAUNCHER_CMD
(DTYPE, ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, GROUP_ID, DESCRIPTION, TYPE_)
values ('SCRIPT_LAUNCHER', '4c72956b-9034-0c76-27bc-c70db1a3d81b', 2, '2018-12-11 19:47:52', 'admin', '2018-12-11 19:48:10', 'admin', null, null, 'Tell me a Joke', 'b2c7fc9b-e44c-0147-e0e5-0fe0a9ba357c', null, 'SCRIPT_LAUNCHER');
insert into DDCIL_SCRIPT_LAUNCHER_CMD
(ID, LAUNCH_SCRIPT)
values ('4c72956b-9034-0c76-27bc-c70db1a3d81b', 'import groovy.json.JsonSlurper
import com.haulmont.cuba.gui.components.Frame.NotificationType
try {
  def joke = new JsonSlurper().parse("http://api.icndb.com/jokes/random".toURL()).value.joke
  frame.showNotification("Joke: $joke", NotificationType.HUMANIZED_HTML)
}
catch (Exception e) {
  frame.showNotification("Joke could not be fetched... ;-(", NotificationType.ERROR)
}');
insert into DDCIL_LAUNCHER_CMD_TRANSLATION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOCALE_, TEXT, LAUNCHER_COMMAND_ID)
values ('b057f40b-3173-18cf-dbe4-090e02453031', 1, '2018-12-11 19:48:10', 'admin', '2018-12-11 19:48:10', null, null, null, en, 'Tell me a Joke', '4c72956b-9034-0c76-27bc-c70db1a3d81b');
insert into DDCIL_LAUNCHER_CMD_TRANSLATION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOCALE_, TEXT, LAUNCHER_COMMAND_ID)
values ('57ed7b07-84ab-1965-d479-315e98781553', null, null, null, null, null, null, null, en, 'Chuck Norris in the House!', '4c72956b-9034-0c76-27bc-c70db1a3d81b');