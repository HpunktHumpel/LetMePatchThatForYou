create table Herdsman_Furs_Resource(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_Furs_Resource(ResourceType)
values
	-- Vanilla Resources
	('RESOURCE_FURS')
	;


update Herdsman_Furs_Resource
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');




drop table Herdsman_Furs_Resource;
