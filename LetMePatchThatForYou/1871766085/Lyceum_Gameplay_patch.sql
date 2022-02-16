UPDATE Buildings
SET Name="LOC_BUILDING_LYCEUM_NAME",
    Description="LOC_BUILDING_LYCEUM_DESCRIPTION",
    PrereqDistrict="DISTRICT_CITY_CENTER",
    PurchaseYield="YIELD_GOLD",
    Cost="60",
    AdvisorType="ADVISOR_SCIENCE"
WHERE
    BuildingType="BUILDING_LYCEUM";
