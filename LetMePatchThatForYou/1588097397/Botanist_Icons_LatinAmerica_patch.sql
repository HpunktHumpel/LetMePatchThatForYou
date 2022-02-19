create table Botanist_LatinAmerican_Resources(
	ResourceType varchar(100),
	UnitType varchar(100) null,
	ImprovementType varchar(100) null
);
--Base Game
insert into Botanist_LatinAmerican_Resources(ResourceType)
values
	-- Latin American Resources
	('RESOURCE_LEU_P0K_QUINOA'),
	('RESOURCE_LEU_P0K_POTATOES'),
	('RESOURCE_LEU_P0K_YERBAMATE'),
	('RESOURCE_LEU_P0K_COCA')
	;

update Botanist_LatinAmerican_Resources
set UnitType = 'UNIT_BOTANIST_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_TRANSPLANT_'|| replace(ResourceType, 'RESOURCE_','');

insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| ImprovementType as Name,
'ICON_ATLAS_BOTANIST_UNITACTIONS' as Atlas,
0 as "Index"
from Botanist_LatinAmerican_Resources;



insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_' || UnitType as Name,
'ICON_ATLAS_BOTANIST_UNITS' as Atlas,
0 as "Index"
from Botanist_LatinAmerican_Resources;

insert into IconDefinitions(Name,Atlas,"Index")
select
'ICON_'|| UnitType||'_PORTRAIT' as Name,
'ICON_ATLAS_BOTANIST_UNITPORTRAITS' as Atlas,
0 as "Index"
from Botanist_LatinAmerican_Resources;

drop table Botanist_LatinAmerican_Resources;
