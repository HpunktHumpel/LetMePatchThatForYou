create table Herdsman_CIVITAS_Resources
(
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


insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| ImprovementType as Name,
'ICON_ATLAS_HERDSMAN_UNITACTIONS' as Atlas,
0 as "Index"
from Herdsman_CIVITAS_Resources;

insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| UnitType||'_PORTRAIT' as Name,
'ICON_ATLAS_HERDSMAN_UNITPORTRAITS' as Atlas,
0 as "Index"
from Herdsman_CIVITAS_Resources;

drop table Herdsman_CIVITAS_Resources;
