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

insert into LocalizedText
(Tag,Language,Text)
select
'LOC_' || br.UnitType || '_NAME' as Tag,
lt.Language,
'Botanist '|| '('|| lt.Text ||')' as Text
from Botanist_LatinAmerican_Resources br
join LocalizedText as lt on Tag = 'LOC_' ||br.ResourceType||'_NAME';


insert into LocalizedText
(Tag,Language,Text)
select
'LOC_' || br.UnitType || '_DESCRIPTION' as Tag,
lt.Language,
'A Botanist with '|| lt.Text  || '.' as Text
from Botanist_LatinAmerican_Resources br
join LocalizedText as lt on Tag = 'LOC_' ||br.ResourceType||'_NAME';



insert into LocalizedText
(Tag,Language,Text)
select
'LOC_' || br.ImprovementType || '_NAME' as Tag,
lt.Language,
'Plant '|| '('|| lt.Text ||')' as Text
from Botanist_LatinAmerican_Resources br
join LocalizedText as lt on Tag = 'LOC_' ||br.ResourceType||'_NAME';


insert into LocalizedText
(Tag,Language,Text)
select
'LOC_' || br.ImprovementType || '_DESCRIPTION' as Tag,
lt.Language,
'Plants '||  lt.Text ||' on a valid tile.' as Text
from Botanist_LatinAmerican_Resources br
join LocalizedText as lt on Tag = 'LOC_' ||br.ResourceType||'_NAME';

drop table Botanist_LatinAmerican_Resources;
