create table Herdsman_Furs_Resource(
	ResourceType text,
	UnitType text null,
	ImprovementType text null
);

insert into Herdsman_Furs_Resource(ResourceType)
select ResourceType
from Resources
where ResourceType in
(
	-- Vanilla Resources
	'RESOURCE_FURS'
);

update Herdsman_Furs_Resource
set UnitType = 'UNIT_HERDSMAN_'|| replace(ResourceType, 'RESOURCE_',''),
ImprovementType =  'IMPROVEMENT_UNRUSTLE_'|| replace(ResourceType, 'RESOURCE_','');

--Generate Units
insert into Types(Type,Kind)
select
UnitType as Type,
'KIND_UNIT' as Kind
from
Herdsman_Furs_Resource;

insert into Units(UnitType,Name,Description,BaseSightRange,BaseMoves,Domain,FormationClass,Cost,BuildCharges,CanTrain)
select
UnitType,
'LOC_'|| UnitType ||'_NAME' as Name,
'LOC_'|| UnitType ||'_DESCRIPTION' as Description,
3 as BaseSightRange,
2 as BaseMoves,
'DOMAIN_LAND' as Domain,
'FORMATION_CLASS_CIVILIAN' as FormationClass,
200 as Cost,
1 as BuildCharges,
0 as CanTrain
from
Herdsman_Furs_Resource;

insert into TypeTags(Type,Tag)
select
UnitType as Type,
'CLASS_LANDCIVILIAN' as Tag
from Herdsman_Furs_Resource;


insert into UnitCaptures(CapturedUnitType,BecomesUnitType)
select
UnitType as CapturedUnitType,
'UNIT_BUILDER' as BecomesUnitType
from
Herdsman_Furs_Resource;
--Generate Improvements
insert into Types(Type,Kind)
select
ImprovementType as Type,
'KIND_IMPROVEMENT' as Kind
from
Herdsman_Furs_Resource;

insert into Improvements(ImprovementType,Name,Description,Icon,Buildable,CanBuildOutsideTerritory,PlunderType)
select
ImprovementType,
'LOC_'|| ImprovementType ||'_NAME' as Name,
'LOC_'|| ImprovementType ||'_DESCRIPTION' as Description,
'ICON_IMPROVEMENT_PASTURE' as Icon,
1 as Buildable,
1 as CanBuildOutsideTerritory,
'PLUNDER_NONE' as PlunderType
from Herdsman_Furs_Resource;

insert into Improvement_ValidBuildUnits(ImprovementType,UnitType)
select
ImprovementType,
UnitType
from Herdsman_Furs_Resource;

--Gather plant types
insert into Improvement_ValidResources(ImprovementType,ResourceType,MustRemoveFeature)
select
'IMPROVEMENT_RUSTLE' as ImprovementType,
ResourceType,
0 as MustRemoveFeature
from Herdsman_Furs_Resource;



insert into Improvement_ValidTerrains(ImprovementType, TerrainType)
select
	distinct
	br.ImprovementType,
	vt.TerrainType
from Herdsman_Furs_Resource br
join  Resource_ValidTerrains vt on br.ResourceType = vt.ResourceType;

insert into Improvement_ValidFeatures(ImprovementType, FeatureType)
select
	distinct
	br.ImprovementType,
	vt.FeatureType
from Herdsman_Furs_Resource br
join  Resource_ValidFeatures vt on br.ResourceType = vt.ResourceType;

drop table Herdsman_Furs_Resource;
