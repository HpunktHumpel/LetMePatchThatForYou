create table Herdsman_LatinAmerican_Resources
(
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


insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| ImprovementType as Name,
'ICON_ATLAS_HERDSMAN_UNITACTIONS' as Atlas,
0 as "Index"
from Herdsman_LatinAmerican_Resources;

insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| UnitType||'_PORTRAIT' as Name,
'ICON_ATLAS_HERDSMAN_UNITPORTRAITS' as Atlas,
0 as "Index"
from Herdsman_LatinAmerican_Resources;

drop table Herdsman_LatinAmerican_Resources;
