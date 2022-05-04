INSERT INTO Parameters (ParameterId, Name, Description,
Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, GroupId, ReadOnly,
SupportsSinglePlayer, SupportsLANMultiplayer, SupportsInternetMultiplayer, SupportsHotSeat, SupportsPlayByCloud,
ChangeableAfterGameStart, ChangeableAfterPlayByCloudMatchCreate, SortIndex) VALUES

( 'LMPT4U_SECONDABILITYNFP_CONFIG',             -- ParameterId
  'LOC_LMPT4U_SECONDABILITYNFP_CONFIG_NAME',    -- Name
  'LOC_LMPT4U_SECONDABILITYNFP_CONFIG_DESC',    -- Description
  'bool',                                       -- Domain
  1,                                            -- DefaultValue
  'Game',                                       -- ConfigurationGroup
  'LMPT4U_SECONDABILITYNFP_CONFIG',         -- ConfigurationId
  'AdvancedOptions',                            -- GroupId
  1,    -- GroupId
  0,    -- ReadOnly
  1,    -- SupportsSinglePlayer
  1,    -- SupportsLANMultiplayer
  1,    -- SupportsInternetMultiplayer
  1,    -- SupportsHotSeat
  1,    -- SupportsPlayByCloud
  0,    -- ChangeableAfterGameStart
  0,    -- ChangeableAfterPlayByCloudMatchCreate
  75190 -- SortIndex
);
