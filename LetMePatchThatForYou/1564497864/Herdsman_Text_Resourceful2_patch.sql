create table Herdsman_Resourceful2_Resources(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_Resourceful2_Resources(ResourceType)
values
	-- Resourceful2 Resources
	('RESOURCE_HAM')
	;


update Herdsman_Resourceful2_Resources
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');




drop table Herdsman_Resourceful2_Resources;
