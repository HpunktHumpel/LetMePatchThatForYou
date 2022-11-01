create table Herdsman_Sukritacts_Resources(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_Sukritacts_Resources(ResourceType)
values
	-- Sukritact's Resources
--	('RESOURCE_SUK_CAMEL'),
	('RESOURCE_DLV_BISON')
	;


update Herdsman_Sukritacts_Resources
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');




drop table Herdsman_Sukritacts_Resources;
