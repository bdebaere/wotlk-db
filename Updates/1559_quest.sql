-- link Old Town Thug (4969) summoned guards to Dashel Stonefist (4961)
DELETE FROM creature_linking_template WHERE entry IN (4961,4969) OR master_entry IN (4961,4969);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(4969,0,4961,4097,0);

-- Tapoke "Slim" Jahn (4962) - reduce respawn timer so quest may be repeated faster
UPDATE creature SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE guid=10873;
