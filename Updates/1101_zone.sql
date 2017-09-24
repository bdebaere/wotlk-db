-- -----------
-- Spawns
-- -----------
-- Add one missing spawn and fix positions for existing ones
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 19408);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 19408);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 19408);
DELETE FROM creature_linking WHERE master_guid IN (SELECT guid FROM creature WHERE id = 19408);
DELETE FROM creature WHERE id = 19408;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Thrallmar mine
(68267,19408,530,1,0,0,396.059,2853.13,54.3868,1.90241,300,300,0,0,4126,2486,0,2),
(69294,19408,530,1,0,0,447.061,2761.99,51.4063,1.83957,300,300,0,0,4126,2486,0,2),
(69295,19408,530,1,0,0,394.4104,2726.636,52.3875,1.772928,300,300,0,0,4126,2486,0,2),
-- Honor hold mine
(69296,19408,530,1,0,0,-720.614,2747.19,35.7635,5.96903,300,300,0,0,4126,2486,0,2),
(69297,19408,530,1,0,0,-671.488,2679.17,-7.71178,5.89921,300,300,0,0,4126,2486,0,2),
(69298,19408,530,1,0,0,-667.592,2822.28,48.8048,4.01695,300,300,0,0,4126,2486,0,2);

-- -----------
-- Movement
-- -----------
-- Thrallmar mines
DELETE FROM creature_movement WHERE id = 68267;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68267,1,404.6454,2839.977,51.95038,0,0,100),
(68267,2,419.5718,2842.13,52.71428,0,0,100),
(68267,3,430.4977,2830.99,52.3682,0,0,100),
(68267,4,423.7926,2819.355,51.89997,0,0,100),
(68267,5,405.1369,2818.537,53.2018,0,0,100),
(68267,6,423.7771,2819.344,51.89642,0,0,100),
(68267,7,430.4977,2830.99,52.3682,0,0,100),
(68267,8,419.5718,2842.13,52.71428,0,0,100),
(68267,9,404.6454,2839.977,51.95038,0,0,100),
(68267,10,395.5075,2854.618,54.55568,0,0,100);

DELETE FROM creature_movement WHERE id = 69294;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(69294,1,443.5822,2774.62,52.04373,0,0,100),
(69294,2,444.3965,2798.678,52.79176,0,0,100),
(69294,3,429.68,2777.075,57.33486,0,0,100),
(69294,4,415.0927,2763.253,53.82945,0,0,100),
(69294,5,394.0157,2768.353,52.39939,0,0,100),
(69294,6,414.9247,2763.293,53.80357,0,0,100),
(69294,7,429.68,2777.075,57.33486,0,0,100),
(69294,8,444.401,2798.813,52.79165,0,0,100),
(69294,9,443.5822,2774.62,52.04373,0,0,100),
(69294,10,446.7592,2762.054,51.32635,0,0,100);

DELETE FROM creature_movement WHERE id = 69295;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(69295,1,391.0532,2740.513,52.23155,0,0,100),
(69295,2,396.298,2764,53.23103,0,0,100),
(69295,3,389.1826,2789.719,53.08622,0,0,100),
(69295,4,393.5247,2799.968,53.49967,0,0,100),
(69295,5,401.9381,2803.749,53.51105,0,0,100),
(69295,6,409.0346,2820.124,52.55848,0,0,100),
(69295,7,401.9381,2803.749,53.51105,0,0,100),
(69295,8,393.5247,2799.968,53.49967,0,0,100),
(69295,9,389.1142,2789.967,53.18184,0,0,100),
(69295,10,396.298,2764,53.23103,0,0,100),
(69295,11,391.0532,2740.513,52.23155,0,0,100),
(69295,12,394.4104,2726.636,52.3875,0,0,100);

-- Honor Hold mines
DELETE FROM creature_movement WHERE id = 69296;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(69296,1,-716.7775,2724.972,33.47478,0,0,100),
(69296,2,-735.4844,2715.299,27.95463,0,0,100),
(69296,3,-745.6932,2734.806,21.54945,0,0,100),
(69296,4,-728.327,2747.288,16.55115,0,0,100),
(69296,5,-704.8961,2729.565,12.2827,0,0,100),
(69296,6,-685.0414,2700.05,1.971086,0,0,100),
(69296,7,-704.8961,2729.565,12.2827,0,0,100),
(69296,8,-728.327,2747.288,16.55115,0,0,100),
(69296,9,-745.6932,2734.806,21.54945,0,0,100),
(69296,10,-735.4844,2715.299,27.95463,0,0,100),
(69296,11,-716.7775,2724.972,33.47478,0,0,100),
(69296,12,-721.7341,2746.734,35.74072,0,0,100);

DELETE FROM creature_movement WHERE id = 69297;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(69297,1,-643.4352,2646.783,-2.972395,0,0,100),
(69297,2,-634.0244,2658.287,-2.248775,0,0,100),
(69297,3,-647.5993,2678.521,-0.4472166,0,0,100),
(69297,4,-665.4527,2696.086,0.1658051,0,0,100),
(69297,5,-685.6353,2697.566,1.779781,0,0,100),
(69297,6,-690.7662,2682.063,2.332114,0,0,100),
(69297,7,-681.6401,2662.78,1.292289,0,0,100),
(69297,8,-663.9424,2643.589,0.7969426,0,0,100),
(69297,9,-644.3442,2645.502,-3.18993,0,0,100),
(69297,10,-671.5385,2680.128,-7.907546,0,0,100);

DELETE FROM creature_movement WHERE id = 69298;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(69298,1,-672.5641,2793.744,44.54322,0,0,100),
(69298,2,-676.0389,2769.1,41.39772,0,0,100),
(69298,3,-674.0818,2751.696,40.38403,0,0,100),
(69298,4,-704.8257,2735.93,33.72125,0,0,100),
(69298,5,-726.8668,2746.255,35.98756,0,0,100),
(69298,6,-704.8257,2735.93,33.72125,0,0,100),
(69298,7,-674.0818,2751.696,40.38403,0,0,100),
(69298,8,-676.0389,2769.1,41.39772,0,0,100),
(69298,9,-672.5641,2793.744,44.54322,0,0,100),
(69298,10,-667.189,2825.941,49.58435,0,0,100);
 