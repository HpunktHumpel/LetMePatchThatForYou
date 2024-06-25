create table Herdsman_Furs_Resource
(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);
insert into Herdsman_Furs_Resource(ResourceType)
values
	-- Furs Resource
	('RESOURCE_FURS')
	;

update Herdsman_Furs_Resource
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');


insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| ImprovementType as Name,
'ICON_ATLAS_HERDSMAN_UNITACTIONS' as Atlas,
0 as "Index"
from Herdsman_Furs_Resource;

insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| UnitType||'_PORTRAIT' as Name,
'ICON_ATLAS_HERDSMAN_UNITPORTRAITS' as Atlas,
0 as "Index"
from Herdsman_Furs_Resource;

drop table Herdsman_Furs_Resource;
