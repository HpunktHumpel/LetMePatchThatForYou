
INSERT OR REPLACE INTO Types ('Type', 'Kind') VALUES
	('PROJECT_GET_RESOURCE_GAS', 	'KIND_PROJECT');

INSERT OR REPLACE INTO Projects ('ProjectType', 'Name', 'ShortName', 'Description', 'Cost', 'AdvisorType', 'PrereqResource', 'PrereqTech') VALUES
	('PROJECT_GET_RESOURCE_GAS', 	'LOC_PROJECT_GET_RESOURCE_GAS_NAME', 	'LOC_PROJECT_GET_RESOURCE_GAS_SHORT', 	'LOC_PROJECT_GET_RESOURCE_GAS_DESC', 	'700', 'ADVISOR_GENERIC', NULL, 'TECH_PLASTICS');

INSERT OR REPLACE INTO Modifiers ('ModifierId', 'ModifierType', 'RunOnce', 'Permanent') VALUES
	('PROJECT_MOD_GET_RESOURCE_GAS', 	'MODIFIER_SINGLE_CITY_GRANT_RESOURCE_IN_CITY', 1, 1);

INSERT OR REPLACE INTO ModifierArguments ('ModifierId', 'Name', 'Value') VALUES
	('PROJECT_MOD_GET_RESOURCE_GAS', 	'ResourceType', 'RESOURCE_GAS'),
	('PROJECT_MOD_GET_RESOURCE_GAS', 	'Amount', 50);

INSERT OR IGNORE INTO ProjectCompletionModifiers (ProjectType, ModifierId) VALUES
	('PROJECT_GET_RESOURCE_GAS', 	'PROJECT_MOD_GET_RESOURCE_GAS');
