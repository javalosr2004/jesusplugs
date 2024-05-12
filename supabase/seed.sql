
SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: capacity_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."capacity_ledger" ("id", "created_at", "potion", "barrel", "quantity", "delivered") VALUES
	(4, '2024-05-08 08:18:20.256704+00', false, true, 1, true),
	(5, '2024-05-08 12:17:01.031987+00', false, true, 1, true),
	(6, '2024-05-08 16:03:52.438211+00', false, true, 1, true),
	(7, '2024-05-08 20:17:49.159263+00', false, true, 1, true),
	(8, '2024-05-09 00:04:06.490385+00', false, true, 1, true),
	(9, '2024-05-09 04:15:05.346458+00', false, true, 1, true),
	(10, '2024-05-09 08:13:31.330358+00', false, true, 1, true),
	(11, '2024-05-09 12:15:06.352278+00', false, true, 1, true),
	(12, '2024-05-09 16:13:49.031986+00', false, true, 1, true),
	(13, '2024-05-09 20:13:47.470265+00', false, true, 1, true),
	(14, '2024-05-10 00:13:22.957767+00', true, false, 1, false),
	(22, '2024-05-11 08:14:52.818766+00', false, true, 1, false),
	(23, '2024-05-11 12:14:25.810978+00', false, true, 1, false),
	(24, '2024-05-11 16:13:11.130339+00', false, true, 1, false),
	(25, '2024-05-11 20:03:49.283881+00', false, true, 1, false),
	(26, '2024-05-12 00:14:06.486154+00', false, true, 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "customer_name", "character_class", "level", "visit_time", "completed") VALUES
	(137, 'Champion Mevvoren', 'Fighter', 13, '2024-05-07 08:40:12.37986+00', true),
	(136, 'Duke Jocelyn Lionheart', 'Fighter', 20, '2024-05-07 08:39:45.478234+00', true),
	(138, 'Champion Isolde Cloudwalker', 'Fighter', 11, '2024-05-07 10:22:37.088686+00', true),
	(139, 'Qeshnok', 'Fighter', 3, '2024-05-07 22:05:55.686636+00', true),
	(140, 'Vanquisher Lachlan Starfall', 'Fighter', 9, '2024-05-07 22:05:55.849848+00', true),
	(141, 'Nerissa Whisperwind', 'Fighter', 2, '2024-05-08 00:38:48.736964+00', true),
	(143, 'Darius Frostbane', 'Fighter', 1, '2024-05-08 02:07:09.59279+00', true),
	(142, 'Theodora Amberdawn', 'Fighter', 2, '2024-05-08 02:07:09.587807+00', true),
	(146, 'Archmage Anselm Frostbane', 'Wizard', 19, '2024-05-08 04:38:43.036469+00', true),
	(145, 'Archmage Branwen Goldmane', 'Wizard', 18, '2024-05-08 04:38:42.895938+00', true),
	(144, 'Lord Hadrian Duskfield', 'Fighter', 11, '2024-05-08 04:38:42.895153+00', true),
	(150, 'Jocelyn Ravenwind', 'Fighter', 3, '2024-05-08 08:58:09.085178+00', true),
	(149, 'Evelina Glimmerstone', 'Fighter', 4, '2024-05-08 08:58:09.080782+00', true),
	(151, 'Spellcrafter Rogabem Glim', 'Wizard', 14, '2024-05-08 08:58:09.086103+00', true),
	(147, 'Druid Marcellus Firestone', 'Druid', 10, '2024-05-08 08:58:08.947493+00', true),
	(148, 'Rilemarael', 'Fighter', 2, '2024-05-08 08:58:09.079768+00', true),
	(152, 'Harmony Fenella Shadowvale', 'Druid', 11, '2024-05-08 10:24:20.173623+00', true),
	(153, 'Mage Corwin Hazelwood', 'Wizard', 11, '2024-05-08 21:06:55.268119+00', true),
	(154, 'Clementine Shadowvale', 'Fighter', 4, '2024-05-08 22:20:43.204734+00', true),
	(155, 'Druid Nevthirasan', 'Druid', 11, '2024-05-09 00:08:43.49974+00', true),
	(156, 'Arcanologist Orlando Thunderstrike', 'Wizard', 6, '2024-05-09 00:08:43.642331+00', true),
	(159, 'Lethisalwyn', 'Fighter', 1, '2024-05-09 02:20:59.07355+00', true),
	(157, 'Fidelia Firestone', 'Fighter', 3, '2024-05-09 02:20:39.261686+00', true),
	(158, 'Melvisrivael', 'Fighter', 2, '2024-05-09 02:20:39.391884+00', true),
	(160, 'Knight Branwen Hawthorne', 'Fighter', 5, '2024-05-09 04:29:09.722025+00', true),
	(161, 'Apprentice Elara Frostbane', 'Wizard', 6, '2024-05-09 04:29:19.992183+00', true),
	(162, 'Spellcrafter Rogabem Glim', 'Wizard', 14, '2024-05-09 06:21:23.506052+00', true),
	(164, 'Mage Corwin Hazelwood', 'Wizard', 11, '2024-05-09 06:21:24.99398+00', true),
	(163, 'Harmony Zephyrine Duskfield', 'Druid', 14, '2024-05-09 06:21:24.855425+00', true),
	(165, 'Lord Mumdep Zop', 'Fighter', 10, '2024-05-09 08:27:06.030576+00', true),
	(166, 'Champion Tamsin Whisperwind', 'Fighter', 11, '2024-05-09 08:27:07.449007+00', true),
	(167, 'Archdruid Smirbruk', 'Druid', 17, '2024-05-09 08:27:08.834614+00', true),
	(171, 'Champion Isolde Cloudwalker', 'Fighter', 11, '2024-05-09 10:21:26.594032+00', true),
	(169, 'Druid Lorelei Lionheart', 'Druid', 13, '2024-05-09 10:21:25.303478+00', true),
	(170, 'Stalker Jocelyn Starfall', 'Ranger', 13, '2024-05-09 10:21:26.578083+00', true),
	(168, 'Archmage Caspian Ironhart', 'Wizard', 17, '2024-05-09 10:21:25.131695+00', true),
	(172, 'Sentinel Upupug Quill', 'Ranger', 16, '2024-05-09 12:28:00.954867+00', true),
	(173, 'Spellcrafter Rogabem Glim', 'Wizard', 14, '2024-05-09 14:21:27.900827+00', true),
	(174, 'Stalker Rovonael', 'Ranger', 10, '2024-05-09 14:21:29.187259+00', true),
	(178, 'Darius Frostbane', 'Fighter', 1, '2024-05-09 16:26:21.342219+00', true),
	(176, 'Initiate Bcusojmok', 'Druid', 9, '2024-05-09 16:26:21.203083+00', true),
	(177, 'Master Tracker Dpetzag', 'Ranger', 15, '2024-05-09 16:26:21.340951+00', true),
	(175, 'Forest Guardian Emathothil', 'Ranger', 10, '2024-05-09 16:26:21.055083+00', true),
	(180, 'Arcanologist Corwin Frostbane', 'Wizard', 8, '2024-05-09 18:21:20.665618+00', true),
	(179, 'Hierophant Eldric Thunderstrike', 'Druid', 18, '2024-05-09 18:21:20.513449+00', true),
	(182, 'Druid Lafrobug Zop', 'Druid', 13, '2024-05-10 02:20:02.473438+00', true),
	(181, 'Transcendent Ivlevvilil', 'Monk', 15, '2024-05-10 02:20:02.461336+00', true),
	(183, 'Mage Aseman', 'Wizard', 11, '2024-05-10 04:27:41.943035+00', true),
	(184, 'Mage Corwin Hazelwood', 'Wizard', 11, '2024-05-10 04:27:41.961232+00', true),
	(185, 'Aspirant Maelis Nightsong', 'Druid', 6, '2024-05-10 04:28:01.531035+00', true),
	(186, 'Grandmaster Gideon Brightwater', 'Monk', 17, '2024-05-10 06:07:27.40492+00', true),
	(187, 'Mage Caspian Ravenwind', 'Wizard', 12, '2024-05-10 08:28:03.279243+00', true),
	(188, 'Holy Knight Nerissa Firestone', 'Paladin', 11, '2024-05-10 10:20:02.246502+00', true),
	(189, 'Valiant Darius Ironhart', 'Paladin', 8, '2024-05-10 12:26:03.019708+00', true),
	(191, 'Radiant Paladin Melisande Amberdawn', 'Paladin', 19, '2024-05-10 12:26:22.55438+00', true),
	(190, 'Valiant Lucian Cloudwalker', 'Paladin', 8, '2024-05-10 12:26:03.15684+00', true),
	(193, 'Druid Lorelei Lionheart', 'Druid', 13, '2024-05-10 14:19:43.291461+00', true),
	(192, 'Ophelia Nightsong', 'Wizard', 4, '2024-05-10 14:19:43.146433+00', true),
	(194, 'Initiate Arabelle Thunderstrike', 'Druid', 8, '2024-05-10 16:25:43.619858+00', true),
	(197, 'Sentinel Upupug Quill', 'Ranger', 16, '2024-05-10 20:32:04.041157+00', true),
	(195, 'Stalker Rosalind Duskfield', 'Ranger', 13, '2024-05-10 20:32:03.901084+00', true),
	(196, 'Forest Guardian Ignatius Stormrider', 'Ranger', 12, '2024-05-10 20:32:03.908465+00', true),
	(199, 'Tracker Nerissa Frostbane', 'Ranger', 8, '2024-05-10 22:20:07.418091+00', true),
	(198, 'Valiant Tamsin Thunderstrike', 'Paladin', 6, '2024-05-10 22:20:07.289047+00', true),
	(200, 'Conqueror Osmaror', 'Fighter', 15, '2024-05-10 22:20:23.70884+00', true),
	(201, 'Vanquisher Balthazar Amberdawn', 'Fighter', 7, '2024-05-11 00:27:25.79567+00', true),
	(202, 'Onthenesir', 'Fighter', 1, '2024-05-11 00:27:27.07162+00', true),
	(203, 'Valamnithir', 'Fighter', 2, '2024-05-11 02:20:24.682996+00', true),
	(205, 'Grandmaster Inometh', 'Monk', 15, '2024-05-11 02:20:25.994853+00', true),
	(204, 'Batilnet Squig', 'Fighter', 1, '2024-05-11 02:20:25.990985+00', true),
	(206, 'Evelina Glimmerstone', 'Fighter', 4, '2024-05-11 02:20:27.436882+00', true),
	(207, 'Zen Nerissa Hawthorne', 'Monk', 6, '2024-05-11 02:20:27.439297+00', true),
	(208, 'Crusader Emwivniwwyn', 'Paladin', 9, '2024-05-11 02:20:27.599984+00', true),
	(209, 'Eternal Hunter Zephyrine Duskfield', 'Ranger', 20, '2024-05-11 08:27:47.046502+00', true),
	(210, 'Druid Lafrobug Zop', 'Druid', 13, '2024-05-11 18:07:48.335264+00', true);


--
-- Data for Name: potions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."potions" ("red", "green", "blue", "dark", "price", "potion_sku", "name") VALUES
	(0, 0, 100, 0, 50, 'blue_potion', 'Blue Potion'),
	(50, 50, 0, 0, 50, 'charming_insightful', 'Charming Insightful Potion'),
	(50, 0, 50, 0, 50, 'charming_jerking_po', 'Charming Jerking Potion'),
	(50, 25, 25, 0, 50, 'charming_coruscatin', 'Charming Coruscating Refreshing Potion'),
	(0, 50, 50, 0, 50, 'insightful_jerking_', 'Insightful Jerking Potion'),
	(25, 50, 25, 0, 50, 'fortifying_insightf', 'Fortifying Insightful Refreshing Potion'),
	(25, 25, 50, 0, 50, 'fortifying_coruscat', 'Fortifying Coruscating Jerking Potion'),
	(0, 100, 0, 0, 60, 'green_potion', 'Green Potion'),
	(100, 0, 0, 0, 30, 'red_potion', 'Red Potion');


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."carts" ("id", "item_sku", "quantity", "customer_id") VALUES
	(119, 'red_potion', 2, 136),
	(120, 'red_potion', 2, 137),
	(121, 'red_potion', 1, 138),
	(122, 'red_potion', 8, 140),
	(123, 'red_potion', 4, 139),
	(124, 'red_potion', 7, 141),
	(125, 'red_potion', 1, 143),
	(126, 'red_potion', 5, 142),
	(127, 'red_potion', 5, 144),
	(128, 'blue_potion', 2, 145),
	(129, 'blue_potion', 3, 146),
	(130, 'green_potion', 5, 147),
	(131, 'blue_potion', 5, 151),
	(132, 'red_potion', 1, 148),
	(133, 'red_potion', 1, 150),
	(134, 'red_potion', 3, 149),
	(135, 'green_potion', 5, 152),
	(136, 'blue_potion', 6, 153),
	(137, 'red_potion', 4, 154),
	(138, 'green_potion', 6, 155),
	(139, 'blue_potion', 1, 156),
	(140, 'red_potion', 3, 157),
	(141, 'red_potion', 2, 159),
	(142, 'red_potion', 7, 158),
	(143, 'red_potion', 2, 160),
	(144, 'blue_potion', 1, 161),
	(145, 'fortifying_coruscat', 3, 164),
	(146, 'blue_potion', 1, 162),
	(147, 'green_potion', 2, 163),
	(148, 'red_potion', 1, 165),
	(149, 'red_potion', 2, 166),
	(150, 'fortifying_insightf', 1, 167),
	(151, 'green_potion', 1, 169),
	(152, 'blue_potion', 1, 168),
	(153, 'red_potion', 2, 171),
	(154, 'charming_insightful', 6, 170),
	(155, 'charming_insightful', 8, 172),
	(156, 'blue_potion', 2, 173),
	(157, 'charming_insightful', 2, 174),
	(158, 'charming_coruscatin', 4, 175),
	(159, 'fortifying_insightf', 1, 176),
	(160, 'fortifying_insightf', 2, 177),
	(161, 'red_potion', 3, 178),
	(162, 'blue_potion', 1, 180),
	(163, 'green_potion', 2, 179),
	(164, 'charming_coruscatin', 1, 181),
	(165, 'fortifying_insightf', 1, 182),
	(166, 'fortifying_coruscat', 3, 183),
	(167, 'blue_potion', 1, 184),
	(168, 'green_potion', 1, 185),
	(169, 'fortifying_insightf', 3, 186),
	(170, 'fortifying_coruscat', 1, 187),
	(171, 'charming_jerking_po', 5, 188),
	(172, 'charming_jerking_po', 1, 189),
	(173, 'charming_jerking_po', 8, 191),
	(174, 'charming_jerking_po', 3, 190),
	(175, 'blue_potion', 1, 192),
	(176, 'green_potion', 1, 193),
	(177, 'green_potion', 1, 194),
	(178, 'charming_coruscatin', 1, 197),
	(179, 'charming_insightful', 3, 196),
	(180, 'charming_insightful', 7, 195),
	(181, 'fortifying_insightf', 2, 199),
	(182, 'charming_jerking_po', 4, 198),
	(183, 'red_potion', 1, 200),
	(184, 'red_potion', 2, 201),
	(185, 'red_potion', 1, 202),
	(186, 'fortifying_coruscat', 1, 205),
	(187, 'red_potion', 5, 203),
	(188, 'red_potion', 4, 206),
	(189, 'red_potion', 2, 204),
	(190, 'charming_coruscatin', 2, 207),
	(191, 'charming_jerking_po', 4, 208),
	(192, 'charming_insightful', 3, 209),
	(193, 'green_potion', 1, 210);


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."inventory" ("attribute") VALUES
	('gold'),
	('red_ml'),
	('green_ml'),
	('blue_ml'),
	('dark_ml');


--
-- Data for Name: inventory_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."inventory_ledger" ("id", "time", "attribute", "change", "reason") VALUES
	(292, '2024-05-06 16:11:33.120659+00', 'gold', 100, 'admin reset'),
	(293, '2024-05-06 16:22:18.638668+00', 'red_ml', 500, 'barrel delivery'),
	(294, '2024-05-06 16:22:18.638668+00', 'gold', -100, 'barrel delivery'),
	(295, '2024-05-07 00:26:35.046577+00', 'red_ml', -500, 'potion delivery'),
	(296, '2024-05-07 08:47:39.322537+00', 'gold', 100, '137 checked out.'),
	(297, '2024-05-07 08:47:39.446201+00', 'gold', 100, '136 checked out.'),
	(298, '2024-05-07 10:27:23.426801+00', 'gold', 50, '138 checked out.'),
	(299, '2024-05-07 12:27:57.515352+00', 'red_ml', 2500, 'barrel delivery'),
	(300, '2024-05-07 12:27:57.515352+00', 'gold', -250, 'barrel delivery'),
	(301, '2024-05-07 14:19:38.330818+00', 'red_ml', -1200, 'potion delivery'),
	(302, '2024-05-07 16:26:22.264498+00', 'red_ml', -900, 'potion delivery'),
	(303, '2024-05-07 18:17:15.489102+00', 'red_ml', -400, 'potion delivery'),
	(305, '2024-05-07 22:06:36.252064+00', 'gold', 160, '139 checked out.'),
	(304, '2024-05-07 22:06:36.252218+00', 'gold', 320, '140 checked out.'),
	(306, '2024-05-08 00:26:00.030318+00', 'red_ml', 500, 'barrel delivery'),
	(307, '2024-05-08 00:26:00.030318+00', 'green_ml', 500, 'barrel delivery'),
	(308, '2024-05-08 00:26:00.030318+00', 'blue_ml', 500, 'barrel delivery'),
	(309, '2024-05-08 00:26:00.030318+00', 'gold', -320, 'barrel delivery'),
	(310, '2024-05-08 00:45:15.416311+00', 'gold', 280, '141 checked out.'),
	(311, '2024-05-08 02:05:34.790226+00', 'red_ml', -500, 'potion delivery'),
	(312, '2024-05-08 02:05:34.790226+00', 'green_ml', -500, 'potion delivery'),
	(313, '2024-05-08 02:05:34.790226+00', 'blue_ml', -500, 'potion delivery'),
	(314, '2024-05-08 02:07:48.978931+00', 'gold', 40, '143 checked out.'),
	(315, '2024-05-08 02:07:48.988275+00', 'gold', 200, '142 checked out.'),
	(316, '2024-05-08 04:28:05.72036+00', 'red_ml', 500, 'barrel delivery'),
	(317, '2024-05-08 04:28:05.72036+00', 'green_ml', 500, 'barrel delivery'),
	(318, '2024-05-08 04:28:05.72036+00', 'blue_ml', 500, 'barrel delivery'),
	(319, '2024-05-08 04:28:05.72036+00', 'gold', -320, 'barrel delivery'),
	(320, '2024-05-08 04:45:07.934381+00', 'gold', 150, '146 checked out.'),
	(321, '2024-05-08 04:45:07.930461+00', 'gold', 100, '145 checked out.'),
	(322, '2024-05-08 04:45:08.075407+00', 'gold', 200, '144 checked out.'),
	(323, '2024-05-08 06:05:48.873365+00', 'red_ml', -500, 'potion delivery'),
	(324, '2024-05-08 06:05:48.873365+00', 'green_ml', -500, 'potion delivery'),
	(325, '2024-05-08 06:05:48.873365+00', 'blue_ml', -500, 'potion delivery'),
	(326, '2024-05-08 09:01:31.254656+00', 'gold', 40, '150 checked out.'),
	(327, '2024-05-08 09:01:31.253993+00', 'gold', 120, '149 checked out.'),
	(328, '2024-05-08 09:01:31.253974+00', 'gold', 250, '151 checked out.'),
	(329, '2024-05-08 09:01:31.26486+00', 'gold', 250, '147 checked out.'),
	(330, '2024-05-08 09:01:31.517423+00', 'gold', 40, '148 checked out.'),
	(331, '2024-05-08 10:33:37.567057+00', 'gold', 250, '152 checked out.'),
	(332, '2024-05-08 16:06:54.135597+00', 'red_ml', 2000, 'barrel delivery'),
	(333, '2024-05-08 16:06:54.135597+00', 'green_ml', 1000, 'barrel delivery'),
	(334, '2024-05-08 16:06:54.135597+00', 'blue_ml', 1000, 'barrel delivery'),
	(335, '2024-05-08 16:06:54.135597+00', 'red_ml', 200, 'barrel delivery'),
	(336, '2024-05-08 16:06:54.135597+00', 'green_ml', 200, 'barrel delivery'),
	(337, '2024-05-08 16:06:54.135597+00', 'blue_ml', 200, 'barrel delivery'),
	(338, '2024-05-08 16:06:54.135597+00', 'gold', -1020, 'barrel delivery'),
	(339, '2024-05-08 18:20:05.642484+00', 'red_ml', -1200, 'potion delivery'),
	(340, '2024-05-08 18:20:05.642484+00', 'green_ml', -500, 'potion delivery'),
	(341, '2024-05-08 18:20:05.642484+00', 'blue_ml', -600, 'potion delivery'),
	(342, '2024-05-08 18:20:05.642484+00', 'red_ml', -300, 'potion delivery'),
	(343, '2024-05-08 18:20:05.642484+00', 'green_ml', -300, 'potion delivery'),
	(344, '2024-05-08 18:20:05.642484+00', 'red_ml', -200, 'potion delivery'),
	(345, '2024-05-08 18:20:05.642484+00', 'blue_ml', -200, 'potion delivery'),
	(346, '2024-05-08 18:20:05.642484+00', 'red_ml', -100, 'potion delivery'),
	(347, '2024-05-08 18:20:05.642484+00', 'green_ml', -50, 'potion delivery'),
	(348, '2024-05-08 18:20:05.642484+00', 'blue_ml', -50, 'potion delivery'),
	(349, '2024-05-08 18:20:05.642484+00', 'green_ml', -200, 'potion delivery'),
	(350, '2024-05-08 18:20:05.642484+00', 'blue_ml', -200, 'potion delivery'),
	(351, '2024-05-08 18:20:05.642484+00', 'red_ml', -50, 'potion delivery'),
	(352, '2024-05-08 18:20:05.642484+00', 'green_ml', -100, 'potion delivery'),
	(353, '2024-05-08 18:20:05.642484+00', 'blue_ml', -50, 'potion delivery'),
	(354, '2024-05-08 18:20:05.642484+00', 'red_ml', -50, 'potion delivery'),
	(355, '2024-05-08 18:20:05.642484+00', 'green_ml', -50, 'potion delivery'),
	(356, '2024-05-08 18:20:05.642484+00', 'blue_ml', -100, 'potion delivery'),
	(357, '2024-05-08 20:50:14.477142+00', 'red_ml', 500, 'barrel delivery'),
	(358, '2024-05-08 20:50:14.477142+00', 'green_ml', 500, 'barrel delivery'),
	(359, '2024-05-08 20:50:14.477142+00', 'blue_ml', 500, 'barrel delivery'),
	(360, '2024-05-08 20:50:14.477142+00', 'red_ml', 200, 'barrel delivery'),
	(361, '2024-05-08 20:50:14.477142+00', 'green_ml', 200, 'barrel delivery'),
	(362, '2024-05-08 20:50:14.477142+00', 'blue_ml', 200, 'barrel delivery'),
	(363, '2024-05-08 20:50:14.477142+00', 'gold', -500, 'barrel delivery'),
	(364, '2024-05-08 20:50:14.745076+00', 'red_ml', -100, 'potion delivery'),
	(365, '2024-05-08 21:13:41.528867+00', 'gold', 300, '153 checked out.'),
	(366, '2024-05-08 22:17:07.032613+00', 'red_ml', -300, 'potion delivery'),
	(367, '2024-05-08 22:17:07.032613+00', 'green_ml', -100, 'potion delivery'),
	(368, '2024-05-08 22:17:07.032613+00', 'blue_ml', -100, 'potion delivery'),
	(369, '2024-05-08 22:17:07.032613+00', 'red_ml', -100, 'potion delivery'),
	(370, '2024-05-08 22:17:07.032613+00', 'green_ml', -100, 'potion delivery'),
	(371, '2024-05-08 22:17:07.032613+00', 'green_ml', -50, 'potion delivery'),
	(372, '2024-05-08 22:17:07.032613+00', 'blue_ml', -50, 'potion delivery'),
	(373, '2024-05-08 22:17:07.032613+00', 'red_ml', -25, 'potion delivery'),
	(374, '2024-05-08 22:17:07.032613+00', 'green_ml', -50, 'potion delivery'),
	(375, '2024-05-08 22:17:07.032613+00', 'blue_ml', -25, 'potion delivery'),
	(376, '2024-05-08 22:17:07.032613+00', 'red_ml', -100, 'potion delivery'),
	(377, '2024-05-08 22:17:07.032613+00', 'blue_ml', -100, 'potion delivery'),
	(378, '2024-05-08 22:17:07.032613+00', 'red_ml', -50, 'potion delivery'),
	(379, '2024-05-08 22:17:07.032613+00', 'green_ml', -25, 'potion delivery'),
	(380, '2024-05-08 22:17:07.032613+00', 'blue_ml', -25, 'potion delivery'),
	(381, '2024-05-08 22:24:05.205172+00', 'gold', 120, '154 checked out.'),
	(382, '2024-05-09 00:06:42.678316+00', 'red_ml', 500, 'barrel delivery'),
	(383, '2024-05-09 00:06:42.678316+00', 'green_ml', 500, 'barrel delivery'),
	(384, '2024-05-09 00:06:42.678316+00', 'red_ml', 200, 'barrel delivery'),
	(385, '2024-05-09 00:06:42.678316+00', 'green_ml', 200, 'barrel delivery'),
	(386, '2024-05-09 00:06:42.678316+00', 'blue_ml', 200, 'barrel delivery'),
	(387, '2024-05-09 00:06:42.678316+00', 'gold', -380, 'barrel delivery'),
	(388, '2024-05-09 00:11:02.684341+00', 'gold', 360, '155 checked out.'),
	(389, '2024-05-09 00:11:02.809688+00', 'gold', 50, '156 checked out.'),
	(390, '2024-05-09 02:17:19.406869+00', 'red_ml', -200, 'potion delivery'),
	(391, '2024-05-09 02:17:19.406869+00', 'green_ml', -100, 'potion delivery'),
	(392, '2024-05-09 02:17:19.406869+00', 'blue_ml', -100, 'potion delivery'),
	(393, '2024-05-09 02:17:19.406869+00', 'red_ml', -50, 'potion delivery'),
	(394, '2024-05-09 02:17:19.406869+00', 'blue_ml', -50, 'potion delivery'),
	(395, '2024-05-09 02:17:19.406869+00', 'green_ml', -100, 'potion delivery'),
	(396, '2024-05-09 02:17:19.406869+00', 'blue_ml', -100, 'potion delivery'),
	(397, '2024-05-09 02:17:19.406869+00', 'red_ml', -25, 'potion delivery'),
	(398, '2024-05-09 02:17:19.406869+00', 'green_ml', -25, 'potion delivery'),
	(399, '2024-05-09 02:17:19.406869+00', 'blue_ml', -50, 'potion delivery'),
	(400, '2024-05-09 02:17:19.406869+00', 'red_ml', -100, 'potion delivery'),
	(401, '2024-05-09 02:17:19.406869+00', 'green_ml', -100, 'potion delivery'),
	(402, '2024-05-09 02:17:19.406869+00', 'red_ml', -25, 'potion delivery'),
	(403, '2024-05-09 02:17:19.406869+00', 'green_ml', -50, 'potion delivery'),
	(404, '2024-05-09 02:17:19.406869+00', 'blue_ml', -25, 'potion delivery'),
	(405, '2024-05-09 02:24:59.426971+00', 'gold', 60, '159 checked out.'),
	(406, '2024-05-09 02:24:59.431756+00', 'gold', 90, '157 checked out.'),
	(407, '2024-05-09 02:24:59.57803+00', 'gold', 210, '158 checked out.'),
	(408, '2024-05-09 04:22:11.8799+00', 'red_ml', 1000, 'barrel delivery'),
	(409, '2024-05-09 04:22:11.8799+00', 'green_ml', 1000, 'barrel delivery'),
	(410, '2024-05-09 04:22:11.8799+00', 'blue_ml', 500, 'barrel delivery'),
	(411, '2024-05-09 04:22:11.8799+00', 'red_ml', 200, 'barrel delivery'),
	(412, '2024-05-09 04:22:11.8799+00', 'green_ml', 200, 'barrel delivery'),
	(413, '2024-05-09 04:22:11.8799+00', 'blue_ml', 200, 'barrel delivery'),
	(414, '2024-05-09 04:22:11.8799+00', 'gold', -700, 'barrel delivery'),
	(415, '2024-05-09 04:22:13.380825+00', 'red_ml', -300, 'potion delivery'),
	(416, '2024-05-09 04:22:13.380825+00', 'green_ml', -100, 'potion delivery'),
	(417, '2024-05-09 04:22:13.380825+00', 'blue_ml', -100, 'potion delivery'),
	(418, '2024-05-09 04:22:13.380825+00', 'red_ml', -150, 'potion delivery'),
	(419, '2024-05-09 04:22:13.380825+00', 'green_ml', -150, 'potion delivery'),
	(420, '2024-05-09 04:22:13.380825+00', 'green_ml', -50, 'potion delivery'),
	(421, '2024-05-09 04:22:13.380825+00', 'blue_ml', -50, 'potion delivery'),
	(422, '2024-05-09 04:22:13.380825+00', 'red_ml', -25, 'potion delivery'),
	(423, '2024-05-09 04:22:13.380825+00', 'green_ml', -50, 'potion delivery'),
	(424, '2024-05-09 04:22:13.380825+00', 'blue_ml', -25, 'potion delivery'),
	(425, '2024-05-09 04:22:13.380825+00', 'red_ml', -50, 'potion delivery'),
	(426, '2024-05-09 04:22:13.380825+00', 'blue_ml', -50, 'potion delivery'),
	(427, '2024-05-09 04:22:13.380825+00', 'red_ml', -50, 'potion delivery'),
	(428, '2024-05-09 04:22:13.380825+00', 'green_ml', -25, 'potion delivery'),
	(429, '2024-05-09 04:22:13.380825+00', 'blue_ml', -25, 'potion delivery'),
	(430, '2024-05-09 04:39:21.65646+00', 'gold', 60, '160 checked out.'),
	(431, '2024-05-09 04:39:23.15913+00', 'gold', 50, '161 checked out.'),
	(432, '2024-05-09 06:29:45.701973+00', 'gold', 50, '162 checked out.'),
	(433, '2024-05-09 06:29:47.079479+00', 'gold', 150, '164 checked out.'),
	(434, '2024-05-09 06:29:47.219476+00', 'gold', 120, '163 checked out.'),
	(435, '2024-05-09 08:20:08.052398+00', 'red_ml', 500, 'barrel delivery'),
	(436, '2024-05-09 08:20:08.052398+00', 'green_ml', 500, 'barrel delivery'),
	(437, '2024-05-09 08:20:08.052398+00', 'blue_ml', 500, 'barrel delivery'),
	(438, '2024-05-09 08:20:08.052398+00', 'red_ml', 200, 'barrel delivery'),
	(439, '2024-05-09 08:20:08.052398+00', 'green_ml', 200, 'barrel delivery'),
	(440, '2024-05-09 08:20:08.052398+00', 'blue_ml', 200, 'barrel delivery'),
	(441, '2024-05-09 08:20:08.052398+00', 'gold', -500, 'barrel delivery'),
	(442, '2024-05-09 08:20:09.551218+00', 'red_ml', -200, 'potion delivery'),
	(443, '2024-05-09 08:20:09.551218+00', 'green_ml', -100, 'potion delivery'),
	(444, '2024-05-09 08:20:09.551218+00', 'blue_ml', -100, 'potion delivery'),
	(445, '2024-05-09 08:20:09.551218+00', 'red_ml', -50, 'potion delivery'),
	(446, '2024-05-09 08:20:09.551218+00', 'green_ml', -50, 'potion delivery'),
	(447, '2024-05-09 08:20:09.551218+00', 'green_ml', -100, 'potion delivery'),
	(448, '2024-05-09 08:20:09.551218+00', 'blue_ml', -100, 'potion delivery'),
	(449, '2024-05-09 08:20:09.551218+00', 'red_ml', -25, 'potion delivery'),
	(450, '2024-05-09 08:20:09.551218+00', 'green_ml', -50, 'potion delivery'),
	(451, '2024-05-09 08:20:09.551218+00', 'blue_ml', -25, 'potion delivery'),
	(452, '2024-05-09 08:20:09.551218+00', 'red_ml', -50, 'potion delivery'),
	(453, '2024-05-09 08:20:09.551218+00', 'blue_ml', -50, 'potion delivery'),
	(454, '2024-05-09 08:38:27.410425+00', 'gold', 30, '165 checked out.'),
	(455, '2024-05-09 08:38:28.970452+00', 'gold', 60, '166 checked out.'),
	(456, '2024-05-09 08:38:40.45871+00', 'gold', 50, '167 checked out.'),
	(457, '2024-05-09 10:29:28.478175+00', 'gold', 60, '171 checked out.'),
	(458, '2024-05-09 10:29:28.604152+00', 'gold', 60, '169 checked out.'),
	(459, '2024-05-09 10:29:28.728209+00', 'gold', 300, '170 checked out.'),
	(460, '2024-05-09 10:29:28.731262+00', 'gold', 50, '168 checked out.'),
	(461, '2024-05-09 12:21:48.655793+00', 'red_ml', 500, 'barrel delivery'),
	(462, '2024-05-09 12:21:48.655793+00', 'green_ml', 500, 'barrel delivery'),
	(463, '2024-05-09 12:21:48.655793+00', 'blue_ml', 500, 'barrel delivery'),
	(464, '2024-05-09 12:21:48.655793+00', 'red_ml', 200, 'barrel delivery'),
	(465, '2024-05-09 12:21:48.655793+00', 'green_ml', 200, 'barrel delivery'),
	(466, '2024-05-09 12:21:48.655793+00', 'blue_ml', 200, 'barrel delivery'),
	(467, '2024-05-09 12:21:48.655793+00', 'gold', -500, 'barrel delivery'),
	(468, '2024-05-09 12:21:49.965391+00', 'red_ml', -300, 'potion delivery'),
	(469, '2024-05-09 12:21:49.965391+00', 'green_ml', -100, 'potion delivery'),
	(470, '2024-05-09 12:21:49.965391+00', 'blue_ml', -200, 'potion delivery'),
	(471, '2024-05-09 12:21:49.965391+00', 'red_ml', -100, 'potion delivery'),
	(472, '2024-05-09 12:21:49.965391+00', 'blue_ml', -100, 'potion delivery'),
	(473, '2024-05-09 12:21:49.965391+00', 'green_ml', -100, 'potion delivery'),
	(474, '2024-05-09 12:21:49.965391+00', 'blue_ml', -100, 'potion delivery'),
	(475, '2024-05-09 12:21:49.965391+00', 'red_ml', -25, 'potion delivery'),
	(476, '2024-05-09 12:21:49.965391+00', 'green_ml', -25, 'potion delivery'),
	(477, '2024-05-09 12:21:49.965391+00', 'blue_ml', -50, 'potion delivery'),
	(478, '2024-05-09 12:21:49.965391+00', 'red_ml', -100, 'potion delivery'),
	(479, '2024-05-09 12:21:49.965391+00', 'green_ml', -100, 'potion delivery'),
	(480, '2024-05-09 12:21:49.965391+00', 'red_ml', -25, 'potion delivery'),
	(481, '2024-05-09 12:21:49.965391+00', 'green_ml', -50, 'potion delivery'),
	(482, '2024-05-09 12:21:49.965391+00', 'blue_ml', -25, 'potion delivery'),
	(483, '2024-05-09 12:38:26.406806+00', 'gold', 400, '172 checked out.'),
	(484, '2024-05-09 14:29:48.635016+00', 'gold', 100, '173 checked out.'),
	(485, '2024-05-09 14:29:48.80228+00', 'gold', 100, '174 checked out.'),
	(486, '2024-05-09 16:20:04.705579+00', 'red_ml', 1000, 'barrel delivery'),
	(487, '2024-05-09 16:20:04.705579+00', 'green_ml', 500, 'barrel delivery'),
	(488, '2024-05-09 16:20:04.705579+00', 'blue_ml', 500, 'barrel delivery'),
	(489, '2024-05-09 16:20:04.705579+00', 'red_ml', 200, 'barrel delivery'),
	(490, '2024-05-09 16:20:04.705579+00', 'green_ml', 200, 'barrel delivery'),
	(491, '2024-05-09 16:20:04.705579+00', 'blue_ml', 200, 'barrel delivery'),
	(492, '2024-05-09 16:20:04.705579+00', 'gold', -600, 'barrel delivery'),
	(493, '2024-05-09 16:20:06.091505+00', 'red_ml', -300, 'potion delivery'),
	(494, '2024-05-09 16:20:06.091505+00', 'green_ml', -100, 'potion delivery'),
	(495, '2024-05-09 16:20:06.091505+00', 'blue_ml', -100, 'potion delivery'),
	(496, '2024-05-09 16:20:06.091505+00', 'red_ml', -100, 'potion delivery'),
	(497, '2024-05-09 16:20:06.091505+00', 'blue_ml', -100, 'potion delivery'),
	(498, '2024-05-09 16:20:06.091505+00', 'green_ml', -50, 'potion delivery'),
	(499, '2024-05-09 16:20:06.091505+00', 'blue_ml', -50, 'potion delivery'),
	(500, '2024-05-09 16:20:06.091505+00', 'red_ml', -25, 'potion delivery'),
	(501, '2024-05-09 16:20:06.091505+00', 'green_ml', -25, 'potion delivery'),
	(502, '2024-05-09 16:20:06.091505+00', 'blue_ml', -50, 'potion delivery'),
	(503, '2024-05-09 16:20:06.091505+00', 'red_ml', -100, 'potion delivery'),
	(504, '2024-05-09 16:20:06.091505+00', 'green_ml', -100, 'potion delivery'),
	(505, '2024-05-09 16:20:06.091505+00', 'red_ml', -50, 'potion delivery'),
	(506, '2024-05-09 16:20:06.091505+00', 'green_ml', -25, 'potion delivery'),
	(507, '2024-05-09 16:20:06.091505+00', 'blue_ml', -25, 'potion delivery'),
	(508, '2024-05-09 16:36:20.619634+00', 'gold', 90, '178 checked out.'),
	(509, '2024-05-09 16:36:20.744546+00', 'gold', 50, '176 checked out.'),
	(510, '2024-05-09 16:36:20.758137+00', 'gold', 100, '177 checked out.'),
	(511, '2024-05-09 16:36:21.088875+00', 'gold', 200, '175 checked out.'),
	(513, '2024-05-09 18:26:20.838816+00', 'gold', 50, '180 checked out.'),
	(512, '2024-05-09 18:26:20.838557+00', 'gold', 120, '179 checked out.'),
	(514, '2024-05-09 20:20:34.830302+00', 'red_ml', 500, 'barrel delivery'),
	(515, '2024-05-09 20:20:34.830302+00', 'green_ml', 500, 'barrel delivery'),
	(516, '2024-05-09 20:20:34.830302+00', 'blue_ml', 500, 'barrel delivery'),
	(517, '2024-05-09 20:20:34.830302+00', 'red_ml', 200, 'barrel delivery'),
	(518, '2024-05-09 20:20:34.830302+00', 'green_ml', 200, 'barrel delivery'),
	(519, '2024-05-09 20:20:34.830302+00', 'blue_ml', 200, 'barrel delivery'),
	(520, '2024-05-09 20:20:34.830302+00', 'gold', -500, 'barrel delivery'),
	(521, '2024-05-09 20:20:36.339371+00', 'gold', -1000, NULL),
	(522, '2024-05-09 20:20:42.884626+00', 'red_ml', -300, 'potion delivery'),
	(523, '2024-05-09 20:20:42.884626+00', 'green_ml', -100, 'potion delivery'),
	(524, '2024-05-09 20:20:42.884626+00', 'blue_ml', -100, 'potion delivery'),
	(525, '2024-05-09 20:20:42.884626+00', 'red_ml', -100, 'potion delivery'),
	(526, '2024-05-09 20:20:42.884626+00', 'green_ml', -100, 'potion delivery'),
	(527, '2024-05-09 20:20:42.884626+00', 'green_ml', -100, 'potion delivery'),
	(528, '2024-05-09 20:20:42.884626+00', 'blue_ml', -100, 'potion delivery'),
	(529, '2024-05-09 20:20:42.884626+00', 'red_ml', -25, 'potion delivery'),
	(530, '2024-05-09 20:20:42.884626+00', 'green_ml', -50, 'potion delivery'),
	(531, '2024-05-09 20:20:42.884626+00', 'blue_ml', -25, 'potion delivery'),
	(532, '2024-05-09 20:20:42.884626+00', 'red_ml', -100, 'potion delivery'),
	(533, '2024-05-09 20:20:42.884626+00', 'blue_ml', -100, 'potion delivery'),
	(534, '2024-05-09 20:20:42.884626+00', 'red_ml', -25, 'potion delivery'),
	(535, '2024-05-09 20:20:42.884626+00', 'green_ml', -25, 'potion delivery'),
	(536, '2024-05-09 20:20:42.884626+00', 'blue_ml', -50, 'potion delivery'),
	(537, '2024-05-10 02:25:21.784438+00', 'gold', 50, '182 checked out.'),
	(538, '2024-05-10 02:25:21.931812+00', 'gold', 50, '181 checked out.'),
	(539, '2024-05-10 04:21:21.982068+00', 'red_ml', -50, 'potion delivery'),
	(540, '2024-05-10 04:21:21.982068+00', 'green_ml', -50, 'potion delivery'),
	(541, '2024-05-10 04:21:21.982068+00', 'red_ml', -50, 'potion delivery'),
	(542, '2024-05-10 04:21:21.982068+00', 'blue_ml', -50, 'potion delivery'),
	(543, '2024-05-10 04:39:29.978308+00', 'gold', 150, '183 checked out.'),
	(544, '2024-05-10 04:39:30.129699+00', 'gold', 50, '184 checked out.'),
	(545, '2024-05-10 04:39:31.519871+00', 'gold', 60, '185 checked out.'),
	(546, '2024-05-10 06:05:48.577589+00', 'red_ml', -100, 'potion delivery'),
	(547, '2024-05-10 06:05:48.577589+00', 'red_ml', -50, 'potion delivery'),
	(548, '2024-05-10 06:05:48.577589+00', 'blue_ml', -50, 'potion delivery'),
	(549, '2024-05-10 06:05:48.577589+00', 'green_ml', -50, 'potion delivery'),
	(550, '2024-05-10 06:05:48.577589+00', 'blue_ml', -50, 'potion delivery'),
	(551, '2024-05-10 06:05:48.577589+00', 'red_ml', -25, 'potion delivery'),
	(552, '2024-05-10 06:05:48.577589+00', 'green_ml', -25, 'potion delivery'),
	(553, '2024-05-10 06:05:48.577589+00', 'blue_ml', -50, 'potion delivery'),
	(554, '2024-05-10 06:05:48.577589+00', 'red_ml', -50, 'potion delivery'),
	(555, '2024-05-10 06:05:48.577589+00', 'green_ml', -50, 'potion delivery'),
	(556, '2024-05-10 06:10:07.890239+00', 'gold', 150, '186 checked out.'),
	(557, '2024-05-10 08:38:42.311722+00', 'gold', 50, '187 checked out.'),
	(558, '2024-05-10 10:28:42.06923+00', 'gold', 250, '188 checked out.'),
	(559, '2024-05-10 12:20:22.962667+00', 'red_ml', 200, 'barrel delivery'),
	(560, '2024-05-10 12:20:22.962667+00', 'blue_ml', 200, 'barrel delivery'),
	(561, '2024-05-10 12:20:22.962667+00', 'gold', -120, 'barrel delivery'),
	(562, '2024-05-10 12:20:22.966748+00', 'red_ml', -200, 'potion delivery'),
	(563, '2024-05-10 12:20:22.966748+00', 'green_ml', -100, 'potion delivery'),
	(564, '2024-05-10 12:20:22.966748+00', 'blue_ml', -100, 'potion delivery'),
	(565, '2024-05-10 12:20:22.966748+00', 'red_ml', -50, 'potion delivery'),
	(566, '2024-05-10 12:20:22.966748+00', 'green_ml', -50, 'potion delivery'),
	(567, '2024-05-10 12:20:22.966748+00', 'green_ml', -100, 'potion delivery'),
	(568, '2024-05-10 12:20:22.966748+00', 'blue_ml', -100, 'potion delivery'),
	(569, '2024-05-10 12:20:22.966748+00', 'red_ml', -25, 'potion delivery'),
	(570, '2024-05-10 12:20:22.966748+00', 'green_ml', -50, 'potion delivery'),
	(571, '2024-05-10 12:20:22.966748+00', 'blue_ml', -25, 'potion delivery'),
	(572, '2024-05-10 12:20:22.966748+00', 'red_ml', -50, 'potion delivery'),
	(573, '2024-05-10 12:20:22.966748+00', 'blue_ml', -50, 'potion delivery'),
	(574, '2024-05-10 12:37:42.901499+00', 'gold', 150, '190 checked out.'),
	(575, '2024-05-10 12:37:42.900777+00', 'gold', 400, '191 checked out.'),
	(576, '2024-05-10 12:37:42.897066+00', 'gold', 50, '189 checked out.'),
	(577, '2024-05-10 14:16:42.554304+00', 'red_ml', -300, 'potion delivery'),
	(578, '2024-05-10 14:16:42.554304+00', 'green_ml', -100, 'potion delivery'),
	(579, '2024-05-10 14:16:42.554304+00', 'blue_ml', -100, 'potion delivery'),
	(580, '2024-05-10 14:16:42.554304+00', 'red_ml', -100, 'potion delivery'),
	(581, '2024-05-10 14:16:42.554304+00', 'green_ml', -100, 'potion delivery'),
	(582, '2024-05-10 14:16:42.554304+00', 'red_ml', -100, 'potion delivery'),
	(583, '2024-05-10 14:16:42.554304+00', 'blue_ml', -100, 'potion delivery'),
	(584, '2024-05-10 14:16:42.554304+00', 'red_ml', -50, 'potion delivery'),
	(585, '2024-05-10 14:16:42.554304+00', 'green_ml', -25, 'potion delivery'),
	(586, '2024-05-10 14:16:42.554304+00', 'blue_ml', -25, 'potion delivery'),
	(587, '2024-05-10 14:16:42.554304+00', 'green_ml', -50, 'potion delivery'),
	(588, '2024-05-10 14:16:42.554304+00', 'blue_ml', -50, 'potion delivery'),
	(589, '2024-05-10 14:16:42.554304+00', 'red_ml', -25, 'potion delivery'),
	(590, '2024-05-10 14:16:42.554304+00', 'green_ml', -50, 'potion delivery'),
	(591, '2024-05-10 14:16:42.554304+00', 'blue_ml', -25, 'potion delivery'),
	(592, '2024-05-10 14:24:02.529458+00', 'gold', 60, '193 checked out.'),
	(593, '2024-05-10 14:24:02.55563+00', 'gold', 50, '192 checked out.'),
	(594, '2024-05-10 16:19:43.298346+00', 'red_ml', 500, 'barrel delivery'),
	(595, '2024-05-10 16:19:43.298346+00', 'green_ml', 500, 'barrel delivery'),
	(596, '2024-05-10 16:19:43.298346+00', 'blue_ml', 500, 'barrel delivery'),
	(597, '2024-05-10 16:19:43.298346+00', 'red_ml', 200, 'barrel delivery'),
	(598, '2024-05-10 16:19:43.298346+00', 'green_ml', 200, 'barrel delivery'),
	(599, '2024-05-10 16:19:43.298346+00', 'blue_ml', 200, 'barrel delivery'),
	(600, '2024-05-10 16:19:43.298346+00', 'gold', -500, 'barrel delivery'),
	(601, '2024-05-10 16:19:43.31569+00', 'red_ml', -50, 'potion delivery'),
	(602, '2024-05-10 16:19:43.31569+00', 'blue_ml', -50, 'potion delivery'),
	(603, '2024-05-10 16:19:43.31569+00', 'green_ml', -50, 'potion delivery'),
	(604, '2024-05-10 16:19:43.31569+00', 'blue_ml', -50, 'potion delivery'),
	(605, '2024-05-10 16:32:43.204498+00', 'gold', 60, '194 checked out.'),
	(606, '2024-05-10 18:11:03.212766+00', 'red_ml', -50, 'potion delivery'),
	(607, '2024-05-10 18:11:03.212766+00', 'green_ml', -50, 'potion delivery'),
	(608, '2024-05-10 20:23:43.925523+00', 'red_ml', 500, 'barrel delivery'),
	(609, '2024-05-10 20:23:43.925523+00', 'red_ml', 200, 'barrel delivery'),
	(610, '2024-05-10 20:23:43.925523+00', 'green_ml', 200, 'barrel delivery'),
	(611, '2024-05-10 20:23:43.925523+00', 'blue_ml', 200, 'barrel delivery'),
	(612, '2024-05-10 20:23:43.925523+00', 'gold', -280, 'barrel delivery'),
	(613, '2024-05-10 20:37:23.510629+00', 'gold', 50, '197 checked out.'),
	(614, '2024-05-10 20:37:23.644526+00', 'gold', 350, '195 checked out.'),
	(615, '2024-05-10 20:37:43.669911+00', 'gold', 150, '196 checked out.'),
	(616, '2024-05-10 22:16:26.791357+00', 'red_ml', -200, 'potion delivery'),
	(617, '2024-05-10 22:16:26.791357+00', 'green_ml', -100, 'potion delivery'),
	(618, '2024-05-10 22:16:26.791357+00', 'blue_ml', -100, 'potion delivery'),
	(619, '2024-05-10 22:16:26.791357+00', 'red_ml', -100, 'potion delivery'),
	(620, '2024-05-10 22:16:26.791357+00', 'green_ml', -100, 'potion delivery'),
	(621, '2024-05-10 22:16:26.791357+00', 'red_ml', -100, 'potion delivery'),
	(622, '2024-05-10 22:16:26.791357+00', 'blue_ml', -100, 'potion delivery'),
	(623, '2024-05-10 22:16:26.791357+00', 'red_ml', -50, 'potion delivery'),
	(624, '2024-05-10 22:16:26.791357+00', 'green_ml', -25, 'potion delivery'),
	(625, '2024-05-10 22:16:26.791357+00', 'blue_ml', -25, 'potion delivery'),
	(626, '2024-05-10 22:16:26.791357+00', 'green_ml', -50, 'potion delivery'),
	(627, '2024-05-10 22:16:26.791357+00', 'blue_ml', -50, 'potion delivery'),
	(628, '2024-05-10 22:16:26.791357+00', 'red_ml', -25, 'potion delivery'),
	(629, '2024-05-10 22:16:26.791357+00', 'green_ml', -25, 'potion delivery'),
	(630, '2024-05-10 22:16:26.791357+00', 'blue_ml', -50, 'potion delivery'),
	(631, '2024-05-10 22:25:06.889961+00', 'gold', 100, '199 checked out.'),
	(632, '2024-05-10 22:25:08.330778+00', 'gold', 200, '198 checked out.'),
	(633, '2024-05-10 22:25:08.337863+00', 'gold', 30, '200 checked out.'),
	(634, '2024-05-11 00:20:25.852393+00', 'red_ml', 2500, 'barrel delivery'),
	(635, '2024-05-11 00:20:25.852393+00', 'red_ml', 500, 'barrel delivery'),
	(636, '2024-05-11 00:20:25.852393+00', 'green_ml', 500, 'barrel delivery'),
	(637, '2024-05-11 00:20:25.852393+00', 'blue_ml', 500, 'barrel delivery'),
	(638, '2024-05-11 00:20:25.852393+00', 'red_ml', 200, 'barrel delivery'),
	(639, '2024-05-11 00:20:25.852393+00', 'green_ml', 200, 'barrel delivery'),
	(640, '2024-05-11 00:20:25.852393+00', 'blue_ml', 200, 'barrel delivery'),
	(641, '2024-05-11 00:20:25.852393+00', 'gold', -750, 'barrel delivery'),
	(642, '2024-05-11 00:20:27.350192+00', 'red_ml', -100, 'potion delivery'),
	(643, '2024-05-11 00:20:27.350192+00', 'blue_ml', -100, 'potion delivery'),
	(644, '2024-05-11 00:20:27.350192+00', 'red_ml', -50, 'potion delivery'),
	(645, '2024-05-11 00:20:27.350192+00', 'green_ml', -50, 'potion delivery'),
	(646, '2024-05-11 00:20:27.350192+00', 'red_ml', -100, 'potion delivery'),
	(647, '2024-05-11 00:20:27.350192+00', 'blue_ml', -100, 'potion delivery'),
	(648, '2024-05-11 00:20:27.350192+00', 'red_ml', -50, 'potion delivery'),
	(649, '2024-05-11 00:20:27.350192+00', 'green_ml', -25, 'potion delivery'),
	(650, '2024-05-11 00:20:27.350192+00', 'blue_ml', -25, 'potion delivery'),
	(651, '2024-05-11 00:20:27.350192+00', 'green_ml', -50, 'potion delivery'),
	(652, '2024-05-11 00:20:27.350192+00', 'blue_ml', -50, 'potion delivery'),
	(653, '2024-05-11 00:39:07.401052+00', 'gold', 30, '202 checked out.'),
	(654, '2024-05-11 00:39:07.399965+00', 'gold', 60, '201 checked out.'),
	(656, '2024-05-11 02:28:31.206411+00', 'gold', 150, '203 checked out.'),
	(655, '2024-05-11 02:28:31.206945+00', 'gold', 50, '205 checked out.'),
	(657, '2024-05-11 02:28:44.582712+00', 'gold', 60, '204 checked out.'),
	(658, '2024-05-11 02:28:45.934883+00', 'gold', 120, '206 checked out.'),
	(659, '2024-05-11 02:28:45.941777+00', 'gold', 100, '207 checked out.'),
	(660, '2024-05-11 02:28:47.323545+00', 'gold', 200, '208 checked out.'),
	(661, '2024-05-11 04:22:58.913373+00', 'red_ml', 2500, 'barrel delivery'),
	(662, '2024-05-11 04:22:58.913373+00', 'red_ml', 500, 'barrel delivery'),
	(663, '2024-05-11 04:22:58.913373+00', 'green_ml', 500, 'barrel delivery'),
	(664, '2024-05-11 04:22:58.913373+00', 'blue_ml', 500, 'barrel delivery'),
	(665, '2024-05-11 04:22:58.913373+00', 'red_ml', 200, 'barrel delivery'),
	(666, '2024-05-11 04:22:58.913373+00', 'green_ml', 200, 'barrel delivery'),
	(667, '2024-05-11 04:22:58.913373+00', 'blue_ml', 200, 'barrel delivery'),
	(668, '2024-05-11 04:22:58.913373+00', 'gold', -750, 'barrel delivery'),
	(669, '2024-05-11 08:21:10.868681+00', 'red_ml', 200, 'barrel delivery'),
	(670, '2024-05-11 08:21:10.868681+00', 'green_ml', 200, 'barrel delivery'),
	(671, '2024-05-11 08:21:10.868681+00', 'gold', -120, 'barrel delivery'),
	(672, '2024-05-11 08:40:31.07688+00', 'gold', 150, '209 checked out.'),
	(673, '2024-05-11 12:21:05.588493+00', 'red_ml', 200, 'barrel delivery'),
	(674, '2024-05-11 12:21:05.588493+00', 'green_ml', 200, 'barrel delivery'),
	(675, '2024-05-11 12:21:05.588493+00', 'blue_ml', 200, 'barrel delivery'),
	(676, '2024-05-11 12:21:05.588493+00', 'gold', -180, 'barrel delivery'),
	(677, '2024-05-11 18:10:09.27933+00', 'gold', 60, '210 checked out.'),
	(678, '2024-05-11 20:07:29.726675+00', 'blue_ml', 200, 'barrel delivery'),
	(679, '2024-05-11 20:07:29.726675+00', 'gold', -60, 'barrel delivery');


--
-- Data for Name: potion_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."potion_ledger" ("id", "time", "change", "potion_sku", "reason") VALUES
	(179, '2024-05-07 00:26:35.046577+00', 5, 'red_potion', 'potion delivery'),
	(180, '2024-05-07 08:47:39.322537+00', -2, 'red_potion', '137 checked out.'),
	(181, '2024-05-07 08:47:39.446201+00', -2, 'red_potion', '136 checked out.'),
	(182, '2024-05-07 10:27:23.426801+00', -1, 'red_potion', '138 checked out.'),
	(183, '2024-05-07 14:19:38.330818+00', 12, 'red_potion', 'potion delivery'),
	(184, '2024-05-07 16:26:22.264498+00', 9, 'red_potion', 'potion delivery'),
	(185, '2024-05-07 18:17:15.489102+00', 4, 'red_potion', 'potion delivery'),
	(186, '2024-05-07 22:06:36.252064+00', -4, 'red_potion', '139 checked out.'),
	(187, '2024-05-07 22:06:36.252218+00', -8, 'red_potion', '140 checked out.'),
	(188, '2024-05-08 00:45:15.416311+00', -7, 'red_potion', '141 checked out.'),
	(189, '2024-05-08 02:05:34.790226+00', 5, 'red_potion', 'potion delivery'),
	(190, '2024-05-08 02:05:34.790226+00', 5, 'green_potion', 'potion delivery'),
	(191, '2024-05-08 02:05:34.790226+00', 5, 'blue_potion', 'potion delivery'),
	(192, '2024-05-08 02:07:48.978931+00', -1, 'red_potion', '143 checked out.'),
	(193, '2024-05-08 02:07:48.988275+00', -5, 'red_potion', '142 checked out.'),
	(194, '2024-05-08 04:45:07.934381+00', -3, 'blue_potion', '146 checked out.'),
	(195, '2024-05-08 04:45:07.930461+00', -2, 'blue_potion', '145 checked out.'),
	(196, '2024-05-08 04:45:08.075407+00', -5, 'red_potion', '144 checked out.'),
	(197, '2024-05-08 06:05:48.873365+00', 5, 'red_potion', 'potion delivery'),
	(198, '2024-05-08 06:05:48.873365+00', 5, 'green_potion', 'potion delivery'),
	(199, '2024-05-08 06:05:48.873365+00', 5, 'blue_potion', 'potion delivery'),
	(201, '2024-05-08 09:01:31.254656+00', -1, 'red_potion', '150 checked out.'),
	(200, '2024-05-08 09:01:31.253993+00', -3, 'red_potion', '149 checked out.'),
	(202, '2024-05-08 09:01:31.253974+00', -5, 'blue_potion', '151 checked out.'),
	(203, '2024-05-08 09:01:31.26486+00', -5, 'green_potion', '147 checked out.'),
	(204, '2024-05-08 09:01:31.517423+00', -1, 'red_potion', '148 checked out.'),
	(205, '2024-05-08 10:33:37.567057+00', -5, 'green_potion', '152 checked out.'),
	(206, '2024-05-08 18:20:05.642484+00', 12, 'red_potion', 'potion delivery'),
	(207, '2024-05-08 18:20:05.642484+00', 5, 'green_potion', 'potion delivery'),
	(208, '2024-05-08 18:20:05.642484+00', 6, 'blue_potion', 'potion delivery'),
	(209, '2024-05-08 18:20:05.642484+00', 6, 'charming_insightful', 'potion delivery'),
	(210, '2024-05-08 18:20:05.642484+00', 4, 'charming_jerking_po', 'potion delivery'),
	(211, '2024-05-08 18:20:05.642484+00', 2, 'charming_coruscatin', 'potion delivery'),
	(212, '2024-05-08 18:20:05.642484+00', 4, 'insightful_jerking_', 'potion delivery'),
	(213, '2024-05-08 18:20:05.642484+00', 2, 'fortifying_insightf', 'potion delivery'),
	(214, '2024-05-08 18:20:05.642484+00', 2, 'fortifying_coruscat', 'potion delivery'),
	(215, '2024-05-08 20:50:14.745076+00', 1, 'red_potion', 'potion delivery'),
	(216, '2024-05-08 21:13:41.528867+00', -6, 'blue_potion', '153 checked out.'),
	(217, '2024-05-08 22:17:07.032613+00', 3, 'red_potion', 'potion delivery'),
	(218, '2024-05-08 22:17:07.032613+00', 1, 'green_potion', 'potion delivery'),
	(219, '2024-05-08 22:17:07.032613+00', 1, 'blue_potion', 'potion delivery'),
	(220, '2024-05-08 22:17:07.032613+00', 2, 'charming_insightful', 'potion delivery'),
	(221, '2024-05-08 22:17:07.032613+00', 1, 'insightful_jerking_', 'potion delivery'),
	(222, '2024-05-08 22:17:07.032613+00', 1, 'fortifying_insightf', 'potion delivery'),
	(223, '2024-05-08 22:17:07.032613+00', 2, 'charming_jerking_po', 'potion delivery'),
	(224, '2024-05-08 22:17:07.032613+00', 1, 'charming_coruscatin', 'potion delivery'),
	(225, '2024-05-08 22:24:05.205172+00', -4, 'red_potion', '154 checked out.'),
	(226, '2024-05-09 00:11:02.684341+00', -6, 'green_potion', '155 checked out.'),
	(227, '2024-05-09 00:11:02.809688+00', -1, 'blue_potion', '156 checked out.'),
	(228, '2024-05-09 02:17:19.406869+00', 2, 'red_potion', 'potion delivery'),
	(229, '2024-05-09 02:17:19.406869+00', 1, 'green_potion', 'potion delivery'),
	(230, '2024-05-09 02:17:19.406869+00', 1, 'blue_potion', 'potion delivery'),
	(231, '2024-05-09 02:17:19.406869+00', 1, 'charming_jerking_po', 'potion delivery'),
	(232, '2024-05-09 02:17:19.406869+00', 2, 'insightful_jerking_', 'potion delivery'),
	(233, '2024-05-09 02:17:19.406869+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(234, '2024-05-09 02:17:19.406869+00', 2, 'charming_insightful', 'potion delivery'),
	(235, '2024-05-09 02:17:19.406869+00', 1, 'fortifying_insightf', 'potion delivery'),
	(236, '2024-05-09 02:24:59.426971+00', -2, 'red_potion', '159 checked out.'),
	(237, '2024-05-09 02:24:59.431756+00', -3, 'red_potion', '157 checked out.'),
	(238, '2024-05-09 02:24:59.57803+00', -7, 'red_potion', '158 checked out.'),
	(239, '2024-05-09 04:22:13.380825+00', 3, 'red_potion', 'potion delivery'),
	(240, '2024-05-09 04:22:13.380825+00', 1, 'green_potion', 'potion delivery'),
	(241, '2024-05-09 04:22:13.380825+00', 1, 'blue_potion', 'potion delivery'),
	(242, '2024-05-09 04:22:13.380825+00', 3, 'charming_insightful', 'potion delivery'),
	(243, '2024-05-09 04:22:13.380825+00', 1, 'insightful_jerking_', 'potion delivery'),
	(244, '2024-05-09 04:22:13.380825+00', 1, 'fortifying_insightf', 'potion delivery'),
	(245, '2024-05-09 04:22:13.380825+00', 1, 'charming_jerking_po', 'potion delivery'),
	(246, '2024-05-09 04:22:13.380825+00', 1, 'charming_coruscatin', 'potion delivery'),
	(247, '2024-05-09 04:39:21.65646+00', -2, 'red_potion', '160 checked out.'),
	(248, '2024-05-09 04:39:23.15913+00', -1, 'blue_potion', '161 checked out.'),
	(249, '2024-05-09 06:29:45.701973+00', -1, 'blue_potion', '162 checked out.'),
	(250, '2024-05-09 06:29:47.079479+00', -3, 'fortifying_coruscat', '164 checked out.'),
	(251, '2024-05-09 06:29:47.219476+00', -2, 'green_potion', '163 checked out.'),
	(252, '2024-05-09 08:20:09.551218+00', 2, 'red_potion', 'potion delivery'),
	(253, '2024-05-09 08:20:09.551218+00', 1, 'green_potion', 'potion delivery'),
	(254, '2024-05-09 08:20:09.551218+00', 1, 'blue_potion', 'potion delivery'),
	(255, '2024-05-09 08:20:09.551218+00', 1, 'charming_insightful', 'potion delivery'),
	(256, '2024-05-09 08:20:09.551218+00', 2, 'insightful_jerking_', 'potion delivery'),
	(257, '2024-05-09 08:20:09.551218+00', 1, 'fortifying_insightf', 'potion delivery'),
	(258, '2024-05-09 08:20:09.551218+00', 1, 'charming_jerking_po', 'potion delivery'),
	(259, '2024-05-09 08:38:27.410425+00', -1, 'red_potion', '165 checked out.'),
	(260, '2024-05-09 08:38:28.970452+00', -2, 'red_potion', '166 checked out.'),
	(261, '2024-05-09 08:38:40.45871+00', -1, 'fortifying_insightf', '167 checked out.'),
	(262, '2024-05-09 10:29:28.478175+00', -2, 'red_potion', '171 checked out.'),
	(263, '2024-05-09 10:29:28.604152+00', -1, 'green_potion', '169 checked out.'),
	(264, '2024-05-09 10:29:28.728209+00', -6, 'charming_insightful', '170 checked out.'),
	(265, '2024-05-09 10:29:28.731262+00', -1, 'blue_potion', '168 checked out.'),
	(266, '2024-05-09 12:21:49.965391+00', 3, 'red_potion', 'potion delivery'),
	(267, '2024-05-09 12:21:49.965391+00', 1, 'green_potion', 'potion delivery'),
	(268, '2024-05-09 12:21:49.965391+00', 2, 'blue_potion', 'potion delivery'),
	(269, '2024-05-09 12:21:49.965391+00', 2, 'charming_jerking_po', 'potion delivery'),
	(270, '2024-05-09 12:21:49.965391+00', 2, 'insightful_jerking_', 'potion delivery'),
	(271, '2024-05-09 12:21:49.965391+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(272, '2024-05-09 12:21:49.965391+00', 2, 'charming_insightful', 'potion delivery'),
	(273, '2024-05-09 12:21:49.965391+00', 1, 'fortifying_insightf', 'potion delivery'),
	(274, '2024-05-09 12:38:26.406806+00', -8, 'charming_insightful', '172 checked out.'),
	(275, '2024-05-09 14:29:48.635016+00', -2, 'blue_potion', '173 checked out.'),
	(276, '2024-05-09 14:29:48.80228+00', -2, 'charming_insightful', '174 checked out.'),
	(277, '2024-05-09 16:20:06.091505+00', 3, 'red_potion', 'potion delivery'),
	(278, '2024-05-09 16:20:06.091505+00', 1, 'green_potion', 'potion delivery'),
	(279, '2024-05-09 16:20:06.091505+00', 1, 'blue_potion', 'potion delivery'),
	(280, '2024-05-09 16:20:06.091505+00', 2, 'charming_jerking_po', 'potion delivery'),
	(281, '2024-05-09 16:20:06.091505+00', 1, 'insightful_jerking_', 'potion delivery'),
	(282, '2024-05-09 16:20:06.091505+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(283, '2024-05-09 16:20:06.091505+00', 2, 'charming_insightful', 'potion delivery'),
	(284, '2024-05-09 16:20:06.091505+00', 1, 'charming_coruscatin', 'potion delivery'),
	(285, '2024-05-09 16:36:20.619634+00', -3, 'red_potion', '178 checked out.'),
	(286, '2024-05-09 16:36:20.744546+00', -1, 'fortifying_insightf', '176 checked out.'),
	(287, '2024-05-09 16:36:20.758137+00', -2, 'fortifying_insightf', '177 checked out.'),
	(288, '2024-05-09 16:36:21.088875+00', -4, 'charming_coruscatin', '175 checked out.'),
	(289, '2024-05-09 18:26:20.838816+00', -1, 'blue_potion', '180 checked out.'),
	(290, '2024-05-09 18:26:20.838557+00', -2, 'green_potion', '179 checked out.'),
	(291, '2024-05-09 20:20:42.884626+00', 3, 'red_potion', 'potion delivery'),
	(292, '2024-05-09 20:20:42.884626+00', 1, 'green_potion', 'potion delivery'),
	(293, '2024-05-09 20:20:42.884626+00', 1, 'blue_potion', 'potion delivery'),
	(294, '2024-05-09 20:20:42.884626+00', 2, 'charming_insightful', 'potion delivery'),
	(295, '2024-05-09 20:20:42.884626+00', 2, 'insightful_jerking_', 'potion delivery'),
	(296, '2024-05-09 20:20:42.884626+00', 1, 'fortifying_insightf', 'potion delivery'),
	(297, '2024-05-09 20:20:42.884626+00', 2, 'charming_jerking_po', 'potion delivery'),
	(298, '2024-05-09 20:20:42.884626+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(299, '2024-05-10 02:25:21.784438+00', -1, 'fortifying_insightf', '182 checked out.'),
	(300, '2024-05-10 02:25:21.931812+00', -1, 'charming_coruscatin', '181 checked out.'),
	(301, '2024-05-10 04:21:21.982068+00', 1, 'charming_insightful', 'potion delivery'),
	(302, '2024-05-10 04:21:21.982068+00', 1, 'charming_jerking_po', 'potion delivery'),
	(303, '2024-05-10 04:39:29.978308+00', -3, 'fortifying_coruscat', '183 checked out.'),
	(304, '2024-05-10 04:39:30.129699+00', -1, 'blue_potion', '184 checked out.'),
	(305, '2024-05-10 04:39:31.519871+00', -1, 'green_potion', '185 checked out.'),
	(306, '2024-05-10 06:05:48.577589+00', 1, 'red_potion', 'potion delivery'),
	(307, '2024-05-10 06:05:48.577589+00', 1, 'charming_jerking_po', 'potion delivery'),
	(308, '2024-05-10 06:05:48.577589+00', 1, 'insightful_jerking_', 'potion delivery'),
	(309, '2024-05-10 06:05:48.577589+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(310, '2024-05-10 06:05:48.577589+00', 1, 'charming_insightful', 'potion delivery'),
	(311, '2024-05-10 06:10:07.890239+00', -3, 'fortifying_insightf', '186 checked out.'),
	(312, '2024-05-10 08:38:42.311722+00', -1, 'fortifying_coruscat', '187 checked out.'),
	(313, '2024-05-10 10:28:42.06923+00', -5, 'charming_jerking_po', '188 checked out.'),
	(314, '2024-05-10 12:20:22.966748+00', 2, 'red_potion', 'potion delivery'),
	(315, '2024-05-10 12:20:22.966748+00', 1, 'green_potion', 'potion delivery'),
	(316, '2024-05-10 12:20:22.966748+00', 1, 'blue_potion', 'potion delivery'),
	(317, '2024-05-10 12:20:22.966748+00', 1, 'charming_insightful', 'potion delivery'),
	(318, '2024-05-10 12:20:22.966748+00', 2, 'insightful_jerking_', 'potion delivery'),
	(319, '2024-05-10 12:20:22.966748+00', 1, 'fortifying_insightf', 'potion delivery'),
	(320, '2024-05-10 12:20:22.966748+00', 1, 'charming_jerking_po', 'potion delivery'),
	(321, '2024-05-10 12:37:42.901499+00', -3, 'charming_jerking_po', '190 checked out.'),
	(323, '2024-05-10 12:37:42.897066+00', -1, 'charming_jerking_po', '189 checked out.'),
	(322, '2024-05-10 12:37:42.900777+00', -8, 'charming_jerking_po', '191 checked out.'),
	(324, '2024-05-10 14:16:42.554304+00', 3, 'red_potion', 'potion delivery'),
	(325, '2024-05-10 14:16:42.554304+00', 1, 'green_potion', 'potion delivery'),
	(326, '2024-05-10 14:16:42.554304+00', 1, 'blue_potion', 'potion delivery'),
	(327, '2024-05-10 14:16:42.554304+00', 2, 'charming_insightful', 'potion delivery'),
	(328, '2024-05-10 14:16:42.554304+00', 2, 'charming_jerking_po', 'potion delivery'),
	(329, '2024-05-10 14:16:42.554304+00', 1, 'charming_coruscatin', 'potion delivery'),
	(330, '2024-05-10 14:16:42.554304+00', 1, 'insightful_jerking_', 'potion delivery'),
	(331, '2024-05-10 14:16:42.554304+00', 1, 'fortifying_insightf', 'potion delivery'),
	(332, '2024-05-10 14:24:02.529458+00', -1, 'green_potion', '193 checked out.'),
	(333, '2024-05-10 14:24:02.55563+00', -1, 'blue_potion', '192 checked out.'),
	(334, '2024-05-10 16:19:43.31569+00', 1, 'charming_jerking_po', 'potion delivery'),
	(335, '2024-05-10 16:19:43.31569+00', 1, 'insightful_jerking_', 'potion delivery'),
	(336, '2024-05-10 16:32:43.204498+00', -1, 'green_potion', '194 checked out.'),
	(337, '2024-05-10 18:11:03.212766+00', 1, 'charming_insightful', 'potion delivery'),
	(338, '2024-05-10 20:37:23.510629+00', -1, 'charming_coruscatin', '197 checked out.'),
	(339, '2024-05-10 20:37:23.644526+00', -7, 'charming_insightful', '195 checked out.'),
	(340, '2024-05-10 20:37:43.669911+00', -3, 'charming_insightful', '196 checked out.'),
	(341, '2024-05-10 22:16:26.791357+00', 2, 'red_potion', 'potion delivery'),
	(342, '2024-05-10 22:16:26.791357+00', 1, 'green_potion', 'potion delivery'),
	(343, '2024-05-10 22:16:26.791357+00', 1, 'blue_potion', 'potion delivery'),
	(344, '2024-05-10 22:16:26.791357+00', 2, 'charming_insightful', 'potion delivery'),
	(345, '2024-05-10 22:16:26.791357+00', 2, 'charming_jerking_po', 'potion delivery'),
	(346, '2024-05-10 22:16:26.791357+00', 1, 'charming_coruscatin', 'potion delivery'),
	(347, '2024-05-10 22:16:26.791357+00', 1, 'insightful_jerking_', 'potion delivery'),
	(348, '2024-05-10 22:16:26.791357+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(349, '2024-05-10 22:25:06.889961+00', -2, 'fortifying_insightf', '199 checked out.'),
	(350, '2024-05-10 22:25:08.330778+00', -4, 'charming_jerking_po', '198 checked out.'),
	(351, '2024-05-10 22:25:08.337863+00', -1, 'red_potion', '200 checked out.'),
	(352, '2024-05-11 00:20:27.350192+00', 1, 'red_potion', 'potion delivery'),
	(353, '2024-05-11 00:20:27.350192+00', 1, 'blue_potion', 'potion delivery'),
	(354, '2024-05-11 00:20:27.350192+00', 1, 'charming_insightful', 'potion delivery'),
	(355, '2024-05-11 00:20:27.350192+00', 2, 'charming_jerking_po', 'potion delivery'),
	(356, '2024-05-11 00:20:27.350192+00', 1, 'charming_coruscatin', 'potion delivery'),
	(357, '2024-05-11 00:20:27.350192+00', 1, 'insightful_jerking_', 'potion delivery'),
	(358, '2024-05-11 00:39:07.401052+00', -1, 'red_potion', '202 checked out.'),
	(359, '2024-05-11 00:39:07.399965+00', -2, 'red_potion', '201 checked out.'),
	(360, '2024-05-11 02:28:31.206945+00', -1, 'fortifying_coruscat', '205 checked out.'),
	(361, '2024-05-11 02:28:31.206411+00', -5, 'red_potion', '203 checked out.'),
	(362, '2024-05-11 02:28:44.582712+00', -2, 'red_potion', '204 checked out.'),
	(363, '2024-05-11 02:28:45.934883+00', -4, 'red_potion', '206 checked out.'),
	(364, '2024-05-11 02:28:45.941777+00', -2, 'charming_coruscatin', '207 checked out.'),
	(365, '2024-05-11 02:28:47.323545+00', -4, 'charming_jerking_po', '208 checked out.'),
	(366, '2024-05-11 08:40:31.07688+00', -3, 'charming_insightful', '209 checked out.'),
	(367, '2024-05-11 18:10:09.27933+00', -1, 'green_potion', '210 checked out.');


--
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."wishlist" ("id", "created_at", "red", "green", "blue", "dark", "quantity", "exclude") VALUES
	(4, '2024-05-11 06:55:39.132887+00', 0, 50, 50, 0, 0, true),
	(5, '2024-05-11 06:56:16.724624+00', 50, 25, 25, 0, 0, true),
	(6, '2024-05-11 06:59:13.075211+00', 100, 0, 0, 0, 15, false),
	(7, '2024-05-11 06:59:25.90181+00', 0, 100, 0, 0, 10, false),
	(8, '2024-05-11 06:59:36.25907+00', 0, 0, 100, 0, 10, false);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: capacity_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."capacity_ledger_id_seq"', 26, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."carts_id_seq"', 210, true);


--
-- Name: inventory_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."inventory_ledger_id_seq"', 679, true);


--
-- Name: potion_carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_carts_id_seq"', 193, true);


--
-- Name: potion_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_ledger_id_seq"', 367, true);


--
-- Name: wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."wishlist_id_seq"', 8, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
