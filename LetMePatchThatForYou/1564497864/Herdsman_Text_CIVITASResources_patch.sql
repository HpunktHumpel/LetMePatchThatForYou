create table Herdsman_CIVITAS_Resources(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_CIVITAS_Resources(ResourceType)
values
	-- CIVITAS Resources
	('RESOURCE_P0K_PENGUINS')
	;


update Herdsman_CIVITAS_Resources
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');




drop table Herdsman_CIVITAS_Resources;
