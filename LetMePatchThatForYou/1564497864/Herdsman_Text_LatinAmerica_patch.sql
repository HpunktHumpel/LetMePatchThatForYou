create table Herdsman_LatinAmerican_Resources(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_LatinAmerican_Resources(ResourceType)
values
	-- Latin American Resources
	('RESOURCE_LEU_P0K_CAPYBARAS'),
	('RESOURCE_LEU_P0K_LLAMAS')
	;


update Herdsman_LatinAmerican_Resources
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');




drop table Herdsman_LatinAmerican_Resources;
