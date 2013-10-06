-- R.E.D. 
-- Xtreme rescaling
------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------
-- Re-Scale units and improvement
-------------------------------------------------------------------------------------------------------------------------

UPDATE ArtDefine_UnitMemberInfos SET Scale = 0.65*Scale WHERE Domain <> 'Sea';

UPDATE ArtDefine_Landmarks SET Scale = 0.65*Scale
	WHERE ResourceType = 'ART_DEF_RESOURCE_COW'
		OR ResourceType = 'ART_DEF_RESOURCE_DEER'
		OR ResourceType = 'ART_DEF_RESOURCE_FURS'
		OR ResourceType = 'ART_DEF_RESOURCE_FURS_HILL'
		OR ResourceType = 'ART_DEF_RESOURCE_HORSE'
		OR ResourceType = 'ART_DEF_RESOURCE_SHEEP'
		OR ResourceType = 'ART_DEF_RESOURCE_IVORY'
		OR ResourceType = 'ART_DEF_RESOURCE_SUPERHORSE';
		
-------------------------------------------------------------------------------------------------------------------------
-- Change some formations...
-------------------------------------------------------------------------------------------------------------------------

--UPDATE ArtDefine_UnitInfos SET Formation = 'Nelson' WHERE Type LIKE 'ART_DEF_UNIT_DESTROYER%';
--UPDATE ArtDefine_UnitInfos SET Formation = 'Helicopter' WHERE Type LIKE 'ART_DEF_UNIT_HELICOPTER_GUNSHIP%';


-------------------------------------------------------------------------------------------------------------------------
-- Number of figures per units
-------------------------------------------------------------------------------------------------------------------------

UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_ANTI_AIRCRAFT_GUN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CANNON%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CAVALRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_FIGHTER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE '%_INFANTRY' AND UnitInfoType NOT LIKE '%_MECH_INFANTRY';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_JET_FIGHTER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_ROCKET_ARTILLERY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_MOBILE_SAM%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_MODERN_ARMOR%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_RIFLEMAN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_TANK%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_ASSAULT_GUN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_AMERICAN_B17%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_AMERICAN_MINUTEMAN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_FRENCH_FOREIGNLEGION%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_GERMAN_PANZER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_JAPANESE_ZERO%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_OTTOMAN_JANISSARY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_SONGHAI_MUSLIMCAVALRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT__WORKER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT__WORKER_LATE%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_DANISH_SKI_INFANTRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_SWEDISH_CAROLEAN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_SWEDISH_HAKKAPELITTA%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_WW1_BOMBER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_WW1_FIGHTER%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_WW1_INFANTRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_WW1_TANK%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_WW2_INFANTRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_ARTILLERY_NAPOLEON%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_ARTILLERY_PARROTT%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_IRONCLAD%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_CAVALRY_CARBINE%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_CAVALRY_PISTOL%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_CONFEDERATE_RIFLEMAN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_ARTILLERY_NAPOLEON%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_ARTILLERY_PARROTT%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_IRONCLAD%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_CAVALRY_CARBINE%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_CAVALRY_PISTOL%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_UNION_RIFLEMAN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE 'ART_DEF_UNIT_U_RUSSIAN_COSSACK%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE '%_PARATROOPER';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2*NumMembers WHERE UnitInfoType LIKE '%_MARINES';


-------------------------------------------------------------------------------------------------------------------------
-- Special cases
-------------------------------------------------------------------------------------------------------------------------


UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_ARTILLERY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 5 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_MOBILE_ARTILLERY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_ANTI_TANK_GUN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_MACHINEGUN%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 7 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_GATLINGGUN%';
--UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_MECHANIZED_INFANTRY%';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = (2*NumMembers)-1 WHERE UnitInfoType LIKE '%_MECH_INFANTRY%'; -- allows fine tuning for both normal and xtrem version during units definition...


UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 13 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_BOMBER%' AND NumMembers = 6;
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 6 WHERE UnitInfoType LIKE 'ART_DEF_UNIT_BOMBER%' AND NumMembers = 3;


-------------------------------------------------------------------------------------------------------------------------
-- Fix higher limit (above that number unit models are not shown)
-------------------------------------------------------------------------------------------------------------------------

UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 32 WHERE NumMembers > 32;
