-- Text adjustments
UPDATE LocalizedText
SET Text = REPLACE(Text, 'Builders', 'Builders and Herdsmen')
WHERE Language = 'en_US'
AND Tag = 'LOC_GOVERNOR_PROMOTION_BUILDER_GUILDMASTER_DESCRIPTION';

-- Localization
UPDATE LocalizedText
SET Text = REPLACE(Text, 'Handwerker', 'Handwerker und Hirten')
WHERE Language = 'de_DE'
AND Tag = 'LOC_GOVERNOR_PROMOTION_BUILDER_GUILDMASTER_DESCRIPTION';
