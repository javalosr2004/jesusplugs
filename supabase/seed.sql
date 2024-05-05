
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
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "customer_name", "character_class", "level", "visit_time", "completed") VALUES
	(36, 'Vanquisher Ugrup Whim', 'Fighter', 6, '2024-04-30 00:20:43.923402+00', false),
	(37, 'Conqueror Qkoxnar', 'Fighter', 15, '2024-04-30 02:18:42.746327+00', false),
	(38, 'Champion Ugudof Kip', 'Fighter', 10, '2024-04-30 08:21:22.548637+00', false),
	(39, 'Orlando Brightwater', 'Fighter', 3, '2024-04-30 08:21:22.582327+00', false),
	(40, 'Vanquisher Fidelia Duskfield', 'Fighter', 9, '2024-04-30 08:21:22.587523+00', false),
	(41, 'Champion Tamsin Whisperwind', 'Fighter', 11, '2024-04-30 08:21:22.685921+00', false),
	(42, 'Champion Mevvoren', 'Fighter', 13, '2024-04-30 08:21:22.715776+00', false),
	(43, 'Conqueror Zephyrine Whisperwind', 'Fighter', 18, '2024-04-30 08:21:22.721735+00', false),
	(44, 'Duke Jocelyn Lionheart', 'Fighter', 20, '2024-04-30 08:21:22.740973+00', false),
	(45, 'Lord Rosalind Frostbane', 'Fighter', 10, '2024-05-01 10:17:30.052168+00', false),
	(46, 'Champion Gufiqzag', 'Fighter', 12, '2024-05-01 10:17:30.057806+00', false),
	(47, 'Champion Takkof Riff', 'Fighter', 12, '2024-05-01 10:17:49.615874+00', false),
	(48, 'Marcellus Frostbane', 'Fighter', 4, '2024-05-01 10:17:49.714395+00', false),
	(49, 'Baron Guinevere Frostbane', 'Fighter', 15, '2024-05-01 10:17:49.851205+00', false),
	(50, 'Knight Ysolde Eaglesong', 'Fighter', 6, '2024-05-01 12:23:56.08432+00', false),
	(51, 'Champion Cedric Whisperwind', 'Fighter', 10, '2024-05-01 12:24:15.488583+00', false),
	(52, 'Champion Aldric Roseblade', 'Fighter', 13, '2024-05-01 12:24:15.493204+00', false),
	(53, 'Arcanologist Yokupismok', 'Wizard', 7, '2024-05-01 12:24:15.50004+00', false),
	(54, 'Lord Rpfqsh', 'Fighter', 14, '2024-05-01 14:20:27.114093+00', false),
	(55, 'Spellcrafter Faelan Moonshadow', 'Wizard', 13, '2024-05-01 14:20:27.269827+00', false),
	(56, 'Warlord Olisiel', 'Barbarian', 11, '2024-05-01 16:24:35.370424+00', false),
	(57, 'Archmage Caspian Ironhart', 'Wizard', 17, '2024-05-01 18:19:27.793896+00', false),
	(58, 'Mage Clementine Hawthorne', 'Wizard', 13, '2024-05-01 18:19:47.274026+00', false),
	(59, 'Conqueror Mapeb Tink', 'Fighter', 19, '2024-05-01 22:12:56.07413+00', true),
	(60, 'Harmony Zzugijgul', 'Druid', 13, '2024-05-02 00:24:29.972319+00', true),
	(61, 'Champion Takkof Riff', 'Fighter', 12, '2024-05-02 00:24:29.971928+00', true),
	(62, 'Conqueror Melisande Eaglesong', 'Fighter', 18, '2024-05-02 04:24:31.225127+00', true),
	(65, 'Loremaster Zephyrine Eaglesong', 'Wizard', 19, '2024-05-02 04:24:51.824562+00', true),
	(64, 'Aspirant Octavius Hazelwood', 'Druid', 5, '2024-05-02 04:24:31.326801+00', true),
	(63, 'Champion Lachlan Duskfield', 'Fighter', 12, '2024-05-02 04:24:31.222198+00', true),
	(66, 'Archdruid Eldric Nightsong', 'Druid', 19, '2024-05-02 06:20:45.991633+00', true),
	(67, 'Mage Clementine Hawthorne', 'Wizard', 13, '2024-05-02 06:20:45.991913+00', true),
	(70, 'Harmony Zzugijgul', 'Druid', 13, '2024-05-02 08:25:03.870543+00', true),
	(72, 'Arcanologist Isolde Frostbane', 'Wizard', 6, '2024-05-02 08:25:03.960673+00', true),
	(71, 'Lord Mumdep Zop', 'Fighter', 10, '2024-05-02 08:25:03.871961+00', true),
	(68, 'Archdruid Smirbruk', 'Druid', 17, '2024-05-02 08:25:03.687862+00', true),
	(73, 'Hierophant Efkelar Stubble', 'Druid', 18, '2024-05-02 08:25:03.961345+00', true),
	(69, 'Champion Tamsin Whisperwind', 'Fighter', 11, '2024-05-02 08:25:03.688023+00', true),
	(75, 'Ophelia Nightsong', 'Wizard', 4, '2024-05-02 10:20:17.889412+00', true),
	(76, 'Mage Caspian Ravenwind', 'Wizard', 12, '2024-05-02 10:20:17.88973+00', true),
	(77, 'Druid Lorelei Lionheart', 'Druid', 13, '2024-05-02 10:20:18.227129+00', true),
	(74, 'Berserker Bjewanthar', 'Barbarian', 6, '2024-05-02 10:20:17.887755+00', true),
	(81, 'Jocelyn Ravenwind', 'Fighter', 3, '2024-05-02 12:25:01.09881+00', true),
	(78, 'Mage Aseman', 'Wizard', 11, '2024-05-02 12:25:00.945316+00', true),
	(79, 'Spellcrafter Faelan Moonshadow', 'Wizard', 13, '2024-05-02 12:25:00.957187+00', true),
	(80, 'Baron Gareth Ironhart', 'Fighter', 16, '2024-05-02 12:25:00.961837+00', true),
	(84, 'Archdruid Thaddeus Frostbane', 'Druid', 18, '2024-05-02 14:21:12.248588+00', true),
	(83, 'Spellcrafter Rogabem Glim', 'Wizard', 14, '2024-05-02 14:21:12.146349+00', true),
	(82, 'Aspirant Hadrian Ravenwind', 'Druid', 8, '2024-05-02 14:21:12.137344+00', true),
	(85, 'Lord Tristan Whisperwind', 'Fighter', 10, '2024-05-02 16:26:32.884786+00', true),
	(86, 'Archdruid Eldric Nightsong', 'Druid', 19, '2024-05-02 16:26:32.985537+00', true),
	(87, 'Arcanologist Corwin Frostbane', 'Wizard', 8, '2024-05-02 18:20:20.677227+00', true),
	(89, 'Aspirant Octavius Hazelwood', 'Druid', 5, '2024-05-03 00:13:48.011989+00', true),
	(88, 'Clementine Quicksilver', 'Wizard', 4, '2024-05-03 00:13:48.01199+00', true),
	(90, 'Druid Lafrobug Zop', 'Druid', 13, '2024-05-03 02:12:31.285002+00', true),
	(91, 'Harmony Lavinia Hazelwood', 'Druid', 12, '2024-05-03 02:12:51.912349+00', true),
	(92, 'Sylvanus Cloudwalker', 'Druid', 4, '2024-05-03 02:12:52.033839+00', true),
	(96, 'Aspirant Maelis Nightsong', 'Druid', 6, '2024-05-03 04:24:57.019091+00', true),
	(93, 'Exemplar Rosalind Firestone', 'Paladin', 19, '2024-05-03 04:24:56.86774+00', true),
	(95, 'Initiate Eldric Thunderstrike', 'Druid', 6, '2024-05-03 04:24:56.999227+00', true),
	(94, 'Holy Knight Jareth Stormrider', 'Paladin', 14, '2024-05-03 04:24:56.868309+00', true),
	(98, 'Holy Knight Fqojruk', 'Paladin', 10, '2024-05-03 10:20:47.233877+00', true),
	(99, 'Holy Knight Nerissa Firestone', 'Paladin', 11, '2024-05-03 10:20:47.358671+00', true),
	(97, 'Harmony Lavinia Hazelwood', 'Druid', 12, '2024-05-03 10:20:47.219321+00', true),
	(100, 'Spellcrafter Mesweniwael', 'Wizard', 10, '2024-05-03 14:21:19.467027+00', true),
	(101, 'Conqueror Osmaror', 'Fighter', 15, '2024-05-03 22:19:27.818331+00', true),
	(102, 'Lord Hadrian Duskfield', 'Fighter', 11, '2024-05-04 00:29:07.082483+00', true),
	(103, 'Alistair Cloudwalker', 'Fighter', 4, '2024-05-04 02:21:09.857542+00', true),
	(104, 'Knight Seraphina Ravenwind', 'Fighter', 6, '2024-05-04 04:30:21.814678+00', true),
	(105, 'Conqueror Mapeb Tink', 'Fighter', 19, '2024-05-04 04:30:21.957064+00', true),
	(106, 'Lord Fidelia Quicksilver', 'Fighter', 11, '2024-05-04 06:19:02.210054+00', true),
	(107, 'Conqueror Zephyrine Whisperwind', 'Fighter', 18, '2024-05-04 06:19:02.221682+00', true),
	(108, 'Zen Ambrose Nightsong', 'Monk', 9, '2024-05-04 12:28:36.475314+00', true),
	(109, 'Forest Guardian Gareth Hawthorne', 'Ranger', 13, '2024-05-04 18:21:54.906025+00', true),
	(111, 'Edric Blackwood', 'Druid', 4, '2024-05-05 10:17:53.150292+00', true),
	(110, 'Knight Eldric Moonshadow', 'Fighter', 6, '2024-05-05 10:17:53.149184+00', true),
	(112, 'Aspirant Tamsin Mistweaver', 'Druid', 5, '2024-05-05 10:17:53.298946+00', true),
	(113, 'Aspirant Branwen Frostbane', 'Druid', 5, '2024-05-05 14:12:19.822398+00', true);


--
-- Data for Name: potions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."potions" ("red", "green", "blue", "dark", "price", "potion_sku", "name") VALUES
	(100, 0, 0, 0, 50, 'red_potion', 'Red Potion'),
	(0, 100, 0, 0, 50, 'green_potion', 'Green Potion'),
	(0, 0, 100, 0, 50, 'blue_potion', 'Blue Potion'),
	(50, 50, 0, 0, 50, 'charming_insightful', 'Charming Insightful Potion'),
	(50, 0, 50, 0, 50, 'charming_jerking_po', 'Charming Jerking Potion'),
	(50, 25, 25, 0, 50, 'charming_coruscatin', 'Charming Coruscating Refreshing Potion'),
	(0, 50, 50, 0, 50, 'insightful_jerking_', 'Insightful Jerking Potion'),
	(25, 25, 50, 0, 50, 'fortifying_coruscat', 'Fortifying Coruscating Jerking Potion'),
	(25, 50, 25, 0, 50, 'fortifying_insightf', 'Fortifying Insightful Refreshing Potion');


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."carts" ("id", "item_sku", "quantity", "customer_id") VALUES
	(19, 'red_potion', 1, 36),
	(20, 'red_potion', 4, 37),
	(21, 'red_potion', 2, 44),
	(22, 'red_potion', 6, 40),
	(23, 'red_potion', 6, 43),
	(24, 'red_potion', 3, 39),
	(25, 'red_potion', 2, 42),
	(26, 'red_potion', 4, 41),
	(27, 'red_potion', 2, 38),
	(28, 'charming_coruscatin', 1, 45),
	(29, 'red_potion', 1, 46),
	(30, 'red_potion', 3, 48),
	(31, 'red_potion', 5, 47),
	(32, 'red_potion', 3, 49),
	(33, 'red_potion', 3, 50),
	(34, 'red_potion', 5, 52),
	(35, 'blue_potion', 6, 53),
	(36, 'red_potion', 4, 51),
	(37, 'blue_potion', 8, 55),
	(38, 'red_potion', 8, 54),
	(39, 'charming_coruscatin', 1, 56),
	(40, 'blue_potion', 5, 57),
	(41, 'blue_potion', 7, 58),
	(42, 'charming_coruscatin', 1, 59),
	(43, 'green_potion', 6, 60),
	(44, 'red_potion', 7, 61),
	(45, 'red_potion', 4, 62),
	(46, 'green_potion', 7, 64),
	(47, 'red_potion', 5, 63),
	(48, 'fortifying_coruscat', 2, 65),
	(49, 'blue_potion', 7, 67),
	(50, 'green_potion', 3, 66),
	(51, 'blue_potion', 7, 72),
	(52, 'red_potion', 2, 69),
	(53, 'green_potion', 3, 70),
	(54, 'fortifying_insightf', 1, 68),
	(55, 'red_potion', 1, 71),
	(56, 'green_potion', 1, 73),
	(57, 'charming_insightful', 4, 74),
	(58, 'blue_potion', 4, 75),
	(59, 'green_potion', 4, 77),
	(60, 'blue_potion', 1, 76),
	(61, 'red_potion', 4, 80),
	(62, 'blue_potion', 1, 79),
	(63, 'blue_potion', 3, 78),
	(64, 'red_potion', 1, 81),
	(65, 'blue_potion', 1, 83),
	(66, 'green_potion', 2, 82),
	(67, 'green_potion', 3, 84),
	(68, 'green_potion', 5, 86),
	(69, 'red_potion', 3, 85),
	(70, 'blue_potion', 5, 87),
	(71, 'green_potion', 7, 89),
	(72, 'blue_potion', 5, 88),
	(73, 'green_potion', 2, 90),
	(74, 'green_potion', 3, 91),
	(75, 'green_potion', 4, 92),
	(76, 'charming_jerking_po', 3, 94),
	(77, 'green_potion', 5, 95),
	(78, 'charming_jerking_po', 2, 93),
	(79, 'green_potion', 2, 96),
	(80, 'charming_jerking_po', 2, 99),
	(81, 'charming_coruscatin', 1, 98),
	(82, 'fortifying_insightf', 1, 97),
	(83, 'fortifying_coruscat', 1, 100),
	(84, 'red_potion', 1, 101),
	(85, 'red_potion', 3, 102),
	(86, 'red_potion', 1, 103),
	(87, 'red_potion', 7, 105),
	(88, 'red_potion', 6, 104),
	(89, 'red_potion', 4, 106),
	(90, 'red_potion', 3, 107),
	(91, 'fortifying_insightf', 1, 108),
	(92, 'charming_insightful', 2, 109),
	(93, 'green_potion', 6, 111),
	(94, 'green_potion', 1, 112),
	(95, 'red_potion', 2, 110),
	(96, 'green_potion', 3, 113);


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
	(25, '2024-04-29 16:36:20.581965+00', 'gold', 100, 'admin reset'),
	(26, '2024-04-29 16:39:46.844236+00', 'red_ml', 500, 'barrel delivery'),
	(27, '2024-04-29 16:39:46.844236+00', 'gold', -100, NULL),
	(28, '2024-04-29 18:16:24.721223+00', 'red_ml', -300, 'potion delivery'),
	(29, '2024-04-29 18:16:24.721223+00', 'red_ml', -200, 'potion delivery'),
	(30, '2024-04-30 00:27:03.558411+00', 'gold', 50, '36 checked out.'),
	(31, '2024-04-30 02:21:20.679478+00', 'gold', 200, '37 checked out.'),
	(32, '2024-04-30 04:11:03.115498+00', 'red_ml', 2500, 'barrel delivery'),
	(33, '2024-04-30 04:11:03.115498+00', 'gold', -250, NULL),
	(34, '2024-04-30 06:17:25.753483+00', 'red_ml', -300, 'potion delivery'),
	(35, '2024-04-30 06:17:25.753483+00', 'red_ml', -2200, 'potion delivery'),
	(36, '2024-04-30 08:25:28.337441+00', 'gold', 100, '44 checked out.'),
	(37, '2024-04-30 08:25:28.356251+00', 'gold', 150, '39 checked out.'),
	(38, '2024-04-30 08:25:48.198271+00', 'gold', 300, '43 checked out.'),
	(39, '2024-04-30 08:25:48.216607+00', 'gold', 100, '42 checked out.'),
	(40, '2024-04-30 08:25:48.237579+00', 'gold', 300, '40 checked out.'),
	(41, '2024-04-30 08:25:48.242391+00', 'gold', 200, '41 checked out.'),
	(42, '2024-04-30 08:25:48.243989+00', 'gold', 100, '38 checked out.'),
	(43, '2024-04-30 12:18:10.521961+00', 'red_ml', 2500, 'barrel delivery'),
	(44, '2024-04-30 12:18:10.521961+00', 'green_ml', 2500, 'barrel delivery'),
	(45, '2024-04-30 12:18:10.521961+00', 'blue_ml', 2500, 'barrel delivery'),
	(46, '2024-04-30 12:18:10.521961+00', 'gold', -800, NULL),
	(47, '2024-05-01 08:14:55.253681+00', 'red_ml', -1200, 'potion delivery'),
	(48, '2024-05-01 08:14:55.253681+00', 'green_ml', -1200, 'potion delivery'),
	(49, '2024-05-01 08:14:55.253681+00', 'blue_ml', -1200, 'potion delivery'),
	(50, '2024-05-01 08:14:55.253681+00', 'red_ml', -150, 'potion delivery'),
	(51, '2024-05-01 08:14:55.253681+00', 'green_ml', -150, 'potion delivery'),
	(52, '2024-05-01 08:14:55.253681+00', 'red_ml', -200, 'potion delivery'),
	(53, '2024-05-01 08:14:55.253681+00', 'blue_ml', -200, 'potion delivery'),
	(54, '2024-05-01 08:14:55.253681+00', 'red_ml', -50, 'potion delivery'),
	(55, '2024-05-01 08:14:55.253681+00', 'green_ml', -25, 'potion delivery'),
	(56, '2024-05-01 08:14:55.253681+00', 'blue_ml', -25, 'potion delivery'),
	(57, '2024-05-01 08:14:55.253681+00', 'green_ml', -150, 'potion delivery'),
	(58, '2024-05-01 08:14:55.253681+00', 'blue_ml', -150, 'potion delivery'),
	(59, '2024-05-01 08:14:55.253681+00', 'red_ml', -50, 'potion delivery'),
	(60, '2024-05-01 08:14:55.253681+00', 'green_ml', -50, 'potion delivery'),
	(61, '2024-05-01 08:14:55.253681+00', 'blue_ml', -100, 'potion delivery'),
	(62, '2024-05-01 08:14:55.253681+00', 'red_ml', -25, 'potion delivery'),
	(63, '2024-05-01 08:14:55.253681+00', 'green_ml', -50, 'potion delivery'),
	(64, '2024-05-01 08:14:55.253681+00', 'blue_ml', -25, 'potion delivery'),
	(65, '2024-05-01 22:20:16.329025+00', 'gold', 50, '59 checked out.'),
	(66, '2024-05-02 00:34:02.950373+00', 'gold', 300, '60 checked out.'),
	(67, '2024-05-02 00:34:22.535793+00', 'gold', 350, '61 checked out.'),
	(68, '2024-05-02 02:17:27.256449+00', 'red_ml', -400, 'potion delivery'),
	(69, '2024-05-02 02:17:27.256449+00', 'green_ml', -400, 'potion delivery'),
	(70, '2024-05-02 02:17:27.256449+00', 'blue_ml', -400, 'potion delivery'),
	(71, '2024-05-02 02:17:27.256449+00', 'red_ml', -50, 'potion delivery'),
	(72, '2024-05-02 02:17:27.256449+00', 'green_ml', -50, 'potion delivery'),
	(73, '2024-05-02 02:17:27.256449+00', 'red_ml', -50, 'potion delivery'),
	(74, '2024-05-02 02:17:27.256449+00', 'blue_ml', -50, 'potion delivery'),
	(75, '2024-05-02 04:18:34.080542+00', 'green_ml', 500, 'barrel delivery'),
	(76, '2024-05-02 04:18:34.080542+00', 'gold', -100, NULL),
	(77, '2024-05-02 04:34:43.93262+00', 'gold', 200, '62 checked out.'),
	(78, '2024-05-02 04:34:43.956937+00', 'gold', 100, '65 checked out.'),
	(79, '2024-05-02 04:34:44.107284+00', 'gold', 350, '64 checked out.'),
	(80, '2024-05-02 04:34:44.12042+00', 'gold', 250, '63 checked out.'),
	(81, '2024-05-02 06:17:29.541197+00', 'red_ml', -300, 'potion delivery'),
	(82, '2024-05-02 06:17:29.541197+00', 'green_ml', -400, 'potion delivery'),
	(83, '2024-05-02 06:17:29.541197+00', 'blue_ml', -300, 'potion delivery'),
	(84, '2024-05-02 06:17:29.541197+00', 'green_ml', -50, 'potion delivery'),
	(85, '2024-05-02 06:17:29.541197+00', 'blue_ml', -50, 'potion delivery'),
	(86, '2024-05-02 06:28:09.704071+00', 'gold', 150, '66 checked out.'),
	(87, '2024-05-02 06:28:09.71129+00', 'gold', 350, '67 checked out.'),
	(88, '2024-05-02 08:18:59.34351+00', 'green_ml', -400, 'potion delivery'),
	(89, '2024-05-02 08:18:59.402349+00', 'red_ml', 500, 'barrel delivery'),
	(90, '2024-05-02 08:18:59.402349+00', 'green_ml', 500, 'barrel delivery'),
	(91, '2024-05-02 08:18:59.402349+00', 'blue_ml', 500, 'barrel delivery'),
	(92, '2024-05-02 08:18:59.402349+00', 'gold', -320, NULL),
	(93, '2024-05-02 08:37:18.763075+00', 'gold', 150, '70 checked out.'),
	(94, '2024-05-02 08:37:18.760815+00', 'gold', 350, '72 checked out.'),
	(95, '2024-05-02 08:37:18.766389+00', 'gold', 50, '71 checked out.'),
	(96, '2024-05-02 08:37:18.774502+00', 'gold', 50, '68 checked out.'),
	(97, '2024-05-02 08:37:18.941413+00', 'gold', 50, '73 checked out.'),
	(98, '2024-05-02 08:37:18.945683+00', 'gold', 100, '69 checked out.'),
	(99, '2024-05-02 10:16:21.02635+00', 'red_ml', -500, 'potion delivery'),
	(100, '2024-05-02 10:16:21.02635+00', 'green_ml', -500, 'potion delivery'),
	(101, '2024-05-02 10:16:21.02635+00', 'blue_ml', -500, 'potion delivery'),
	(102, '2024-05-02 10:28:41.18099+00', 'gold', 200, '75 checked out.'),
	(103, '2024-05-02 10:28:41.181929+00', 'gold', 50, '76 checked out.'),
	(104, '2024-05-02 10:28:41.232568+00', 'gold', 200, '77 checked out.'),
	(105, '2024-05-02 10:28:41.355646+00', 'gold', 200, '74 checked out.'),
	(106, '2024-05-02 12:19:11.579407+00', 'red_ml', 500, 'barrel delivery'),
	(107, '2024-05-02 12:19:11.579407+00', 'green_ml', 500, 'barrel delivery'),
	(108, '2024-05-02 12:19:11.579407+00', 'blue_ml', 500, 'barrel delivery'),
	(109, '2024-05-02 12:19:11.579407+00', 'gold', -320, NULL),
	(110, '2024-05-02 12:36:52.8769+00', 'gold', 50, '81 checked out.'),
	(111, '2024-05-02 12:36:52.877635+00', 'gold', 150, '78 checked out.'),
	(112, '2024-05-02 12:36:52.883412+00', 'gold', 50, '79 checked out.'),
	(113, '2024-05-02 12:36:53.016086+00', 'gold', 200, '80 checked out.'),
	(114, '2024-05-02 14:17:37.33664+00', 'red_ml', -500, 'potion delivery'),
	(115, '2024-05-02 14:17:37.33664+00', 'green_ml', -500, 'potion delivery'),
	(116, '2024-05-02 14:17:37.33664+00', 'blue_ml', -500, 'potion delivery'),
	(117, '2024-05-02 14:27:54.930501+00', 'gold', 150, '84 checked out.'),
	(118, '2024-05-02 14:27:54.956105+00', 'gold', 50, '83 checked out.'),
	(119, '2024-05-02 14:27:55.102781+00', 'gold', 100, '82 checked out.'),
	(120, '2024-05-02 16:19:54.944358+00', 'red_ml', 500, 'barrel delivery'),
	(121, '2024-05-02 16:19:54.944358+00', 'green_ml', 500, 'barrel delivery'),
	(122, '2024-05-02 16:19:54.944358+00', 'blue_ml', 500, 'barrel delivery'),
	(123, '2024-05-02 16:19:54.944358+00', 'gold', -320, NULL),
	(124, '2024-05-02 16:36:21.746185+00', 'gold', 150, '85 checked out.'),
	(125, '2024-05-02 16:36:41.746583+00', 'gold', 250, '86 checked out.'),
	(126, '2024-05-02 18:17:27.034769+00', 'red_ml', -500, 'potion delivery'),
	(127, '2024-05-02 18:17:27.034769+00', 'green_ml', -500, 'potion delivery'),
	(128, '2024-05-02 18:17:27.034769+00', 'blue_ml', -500, 'potion delivery'),
	(129, '2024-05-02 18:21:59.392249+00', 'gold', 250, '87 checked out.'),
	(130, '2024-05-02 20:05:47.398245+00', 'red_ml', 2500, 'barrel delivery'),
	(131, '2024-05-02 20:05:47.398245+00', 'green_ml', 2500, 'barrel delivery'),
	(132, '2024-05-02 20:05:47.398245+00', 'blue_ml', 2500, 'barrel delivery'),
	(133, '2024-05-02 20:05:47.398245+00', 'gold', -800, NULL),
	(134, '2024-05-02 22:17:20.18519+00', 'red_ml', -1200, 'potion delivery'),
	(135, '2024-05-02 22:17:20.18519+00', 'green_ml', -1200, 'potion delivery'),
	(136, '2024-05-03 00:24:50.119672+00', 'gold', 350, '89 checked out.'),
	(137, '2024-05-03 00:25:09.627919+00', 'gold', 250, '88 checked out.'),
	(138, '2024-05-03 02:11:25.795576+00', 'red_ml', -600, 'potion delivery'),
	(139, '2024-05-03 02:11:25.795576+00', 'green_ml', -600, 'potion delivery'),
	(140, '2024-05-03 02:20:04.114497+00', 'gold', 100, '90 checked out.'),
	(141, '2024-05-03 02:20:23.697609+00', 'gold', 150, '91 checked out.'),
	(142, '2024-05-03 02:20:23.70835+00', 'gold', 200, '92 checked out.'),
	(143, '2024-05-03 04:33:32.099922+00', 'gold', 100, '96 checked out.'),
	(144, '2024-05-03 04:33:32.261607+00', 'gold', 100, '93 checked out.'),
	(145, '2024-05-03 04:33:52.941552+00', 'gold', 250, '95 checked out.'),
	(146, '2024-05-03 04:33:52.946182+00', 'gold', 150, '94 checked out.'),
	(147, '2024-05-03 08:18:53.755166+00', 'red_ml', -100, 'potion delivery'),
	(148, '2024-05-03 08:18:53.755166+00', 'green_ml', -100, 'potion delivery'),
	(149, '2024-05-03 08:18:53.755166+00', 'green_ml', -100, 'potion delivery'),
	(150, '2024-05-03 08:18:53.755166+00', 'blue_ml', -100, 'potion delivery'),
	(151, '2024-05-03 08:18:53.755166+00', 'red_ml', -25, 'potion delivery'),
	(152, '2024-05-03 08:18:53.755166+00', 'green_ml', -50, 'potion delivery'),
	(153, '2024-05-03 08:18:53.755166+00', 'blue_ml', -25, 'potion delivery'),
	(154, '2024-05-03 08:18:53.755166+00', 'red_ml', -100, 'potion delivery'),
	(155, '2024-05-03 08:18:53.755166+00', 'blue_ml', -100, 'potion delivery'),
	(156, '2024-05-03 08:18:53.755166+00', 'red_ml', -50, 'potion delivery'),
	(157, '2024-05-03 08:18:53.755166+00', 'green_ml', -25, 'potion delivery'),
	(158, '2024-05-03 08:18:53.755166+00', 'blue_ml', -25, 'potion delivery'),
	(159, '2024-05-03 08:18:53.755166+00', 'red_ml', -25, 'potion delivery'),
	(160, '2024-05-03 08:18:53.755166+00', 'green_ml', -25, 'potion delivery'),
	(161, '2024-05-03 08:18:53.755166+00', 'blue_ml', -50, 'potion delivery'),
	(162, '2024-05-03 10:24:52.402053+00', 'gold', 50, '98 checked out.'),
	(163, '2024-05-03 10:24:52.404035+00', 'gold', 100, '99 checked out.'),
	(164, '2024-05-03 10:25:12.891115+00', 'gold', 50, '97 checked out.'),
	(165, '2024-05-03 12:19:46.521705+00', 'green_ml', 2500, 'barrel delivery'),
	(166, '2024-05-03 12:19:46.521705+00', 'gold', -250, 'barrel delivery'),
	(167, '2024-05-03 14:25:44.663506+00', 'gold', 50, '100 checked out.'),
	(168, '2024-05-03 22:23:47.666796+00', 'gold', 50, '101 checked out.'),
	(169, '2024-05-04 00:44:29.076389+00', 'gold', 150, '102 checked out.'),
	(170, '2024-05-04 02:29:25.686986+00', 'gold', 50, '103 checked out.'),
	(171, '2024-05-04 04:46:59.874678+00', 'gold', 300, '104 checked out.'),
	(172, '2024-05-04 04:46:59.881563+00', 'gold', 350, '105 checked out.'),
	(173, '2024-05-04 06:16:04.347478+00', 'green_ml', -250, 'potion delivery'),
	(174, '2024-05-04 06:16:04.347478+00', 'blue_ml', -250, 'potion delivery'),
	(175, '2024-05-04 06:16:04.347478+00', 'red_ml', -25, 'potion delivery'),
	(176, '2024-05-04 06:16:04.347478+00', 'green_ml', -50, 'potion delivery'),
	(177, '2024-05-04 06:16:04.347478+00', 'blue_ml', -25, 'potion delivery'),
	(178, '2024-05-04 06:25:26.820306+00', 'gold', 200, '106 checked out.'),
	(179, '2024-05-04 06:25:27.016103+00', 'gold', 150, '107 checked out.'),
	(180, '2024-05-04 08:21:26.106109+00', 'green_ml', -500, 'potion delivery'),
	(181, '2024-05-04 08:21:26.106109+00', 'blue_ml', -500, 'potion delivery'),
	(182, '2024-05-04 10:14:52.576186+00', 'green_ml', -250, 'potion delivery'),
	(183, '2024-05-04 10:14:52.576186+00', 'blue_ml', -250, 'potion delivery'),
	(184, '2024-05-04 12:21:29.492415+00', 'green_ml', -150, 'potion delivery'),
	(185, '2024-05-04 12:21:29.492415+00', 'blue_ml', -150, 'potion delivery'),
	(186, '2024-05-04 12:40:42.436855+00', 'gold', 50, '108 checked out.'),
	(187, '2024-05-04 14:17:45.534441+00', 'green_ml', -100, 'potion delivery'),
	(188, '2024-05-04 14:17:45.534441+00', 'blue_ml', -100, 'potion delivery'),
	(189, '2024-05-04 16:22:27.096124+00', 'green_ml', -50, 'potion delivery'),
	(190, '2024-05-04 16:22:27.096124+00', 'blue_ml', -50, 'potion delivery'),
	(191, '2024-05-04 18:28:41.970991+00', 'gold', 100, '109 checked out.'),
	(192, '2024-05-04 20:40:34.140629+00', 'green_ml', -100, 'potion delivery'),
	(193, '2024-05-04 20:40:34.140629+00', 'blue_ml', -100, 'potion delivery'),
	(194, '2024-05-04 22:16:55.242487+00', 'green_ml', -100, 'potion delivery'),
	(195, '2024-05-04 22:16:55.242487+00', 'blue_ml', -100, 'potion delivery'),
	(196, '2024-05-05 06:05:00.726808+00', 'blue_ml', -300, 'potion delivery'),
	(197, '2024-05-05 08:22:35.450801+00', 'red_ml', -400, 'potion delivery'),
	(198, '2024-05-05 08:22:35.450801+00', 'green_ml', -700, 'potion delivery'),
	(199, '2024-05-05 10:24:48.689772+00', 'gold', 100, '110 checked out.'),
	(200, '2024-05-05 10:24:48.688121+00', 'gold', 300, '111 checked out.'),
	(201, '2024-05-05 10:24:48.689772+00', 'gold', 50, '112 checked out.'),
	(202, '2024-05-05 12:15:46.103505+00', 'red_ml', 2500, 'barrel delivery'),
	(203, '2024-05-05 12:15:46.103505+00', 'gold', -250, 'barrel delivery'),
	(204, '2024-05-05 12:17:50.971061+00', 'green_ml', -300, 'potion delivery'),
	(205, '2024-05-05 12:17:50.971061+00', 'blue_ml', -300, 'potion delivery'),
	(206, '2024-05-05 12:17:50.971061+00', 'green_ml', -50, 'potion delivery'),
	(207, '2024-05-05 12:17:50.971061+00', 'blue_ml', -50, 'potion delivery'),
	(208, '2024-05-05 14:11:12.260935+00', 'red_ml', -200, 'potion delivery'),
	(209, '2024-05-05 14:19:52.695265+00', 'gold', 150, '113 checked out.'),
	(210, '2024-05-05 16:24:33.126964+00', 'green_ml', 2500, 'barrel delivery'),
	(211, '2024-05-05 16:24:33.126964+00', 'blue_ml', 2500, 'barrel delivery'),
	(212, '2024-05-05 16:24:33.126964+00', 'gold', -550, 'barrel delivery'),
	(213, '2024-05-05 16:24:33.305038+00', 'red_ml', -300, 'potion delivery');


--
-- Data for Name: potion_ledger; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."potion_ledger" ("id", "time", "change", "potion_sku", "reason") VALUES
	(12, '2024-04-29 18:16:24.721223+00', 3, 'red_potion', 'potion delivery'),
	(13, '2024-04-29 18:16:24.721223+00', 2, 'red_potion', 'potion delivery'),
	(14, '2024-04-30 00:27:03.558411+00', -1, 'red_potion', '36 checked out.'),
	(15, '2024-04-30 02:21:20.679478+00', -4, 'red_potion', '37 checked out.'),
	(16, '2024-04-30 06:17:25.753483+00', 3, 'red_potion', 'potion delivery'),
	(17, '2024-04-30 06:17:25.753483+00', 22, 'red_potion', 'potion delivery'),
	(18, '2024-04-30 08:25:28.337441+00', -2, 'red_potion', '44 checked out.'),
	(19, '2024-04-30 08:25:28.356251+00', -3, 'red_potion', '39 checked out.'),
	(20, '2024-04-30 08:25:48.198271+00', -6, 'red_potion', '43 checked out.'),
	(21, '2024-04-30 08:25:48.216607+00', -2, 'red_potion', '42 checked out.'),
	(22, '2024-04-30 08:25:48.237579+00', -6, 'red_potion', '40 checked out.'),
	(23, '2024-04-30 08:25:48.242391+00', -4, 'red_potion', '41 checked out.'),
	(24, '2024-04-30 08:25:48.243989+00', -2, 'red_potion', '38 checked out.'),
	(25, '2024-05-01 08:14:55.253681+00', 12, 'red_potion', 'potion delivery'),
	(26, '2024-05-01 08:14:55.253681+00', 12, 'green_potion', 'potion delivery'),
	(27, '2024-05-01 08:14:55.253681+00', 12, 'blue_potion', 'potion delivery'),
	(28, '2024-05-01 08:14:55.253681+00', 3, 'charming_insightful', 'potion delivery'),
	(29, '2024-05-01 08:14:55.253681+00', 4, 'charming_jerking_po', 'potion delivery'),
	(30, '2024-05-01 08:14:55.253681+00', 1, 'charming_coruscatin', 'potion delivery'),
	(31, '2024-05-01 08:14:55.253681+00', 3, 'insightful_jerking_', 'potion delivery'),
	(32, '2024-05-01 08:14:55.253681+00', 2, 'fortifying_coruscat', 'potion delivery'),
	(33, '2024-05-01 08:14:55.253681+00', 1, 'fortifying_insightf', 'potion delivery'),
	(34, '2024-05-01 22:20:16.329025+00', -1, 'charming_coruscatin', '59 checked out.'),
	(35, '2024-05-02 00:34:02.950373+00', -6, 'green_potion', '60 checked out.'),
	(36, '2024-05-02 00:34:22.535793+00', -7, 'red_potion', '61 checked out.'),
	(37, '2024-05-02 02:17:27.256449+00', 4, 'red_potion', 'potion delivery'),
	(38, '2024-05-02 02:17:27.256449+00', 4, 'green_potion', 'potion delivery'),
	(39, '2024-05-02 02:17:27.256449+00', 4, 'blue_potion', 'potion delivery'),
	(40, '2024-05-02 02:17:27.256449+00', 1, 'charming_insightful', 'potion delivery'),
	(41, '2024-05-02 02:17:27.256449+00', 1, 'charming_jerking_po', 'potion delivery'),
	(42, '2024-05-02 04:34:43.93262+00', -4, 'red_potion', '62 checked out.'),
	(43, '2024-05-02 04:34:43.956937+00', -2, 'fortifying_coruscat', '65 checked out.'),
	(44, '2024-05-02 04:34:44.107284+00', -7, 'green_potion', '64 checked out.'),
	(45, '2024-05-02 04:34:44.12042+00', -5, 'red_potion', '63 checked out.'),
	(46, '2024-05-02 06:17:29.541197+00', 3, 'red_potion', 'potion delivery'),
	(47, '2024-05-02 06:17:29.541197+00', 4, 'green_potion', 'potion delivery'),
	(48, '2024-05-02 06:17:29.541197+00', 3, 'blue_potion', 'potion delivery'),
	(49, '2024-05-02 06:17:29.541197+00', 1, 'insightful_jerking_', 'potion delivery'),
	(50, '2024-05-02 06:28:09.704071+00', -3, 'green_potion', '66 checked out.'),
	(51, '2024-05-02 06:28:09.71129+00', -7, 'blue_potion', '67 checked out.'),
	(52, '2024-05-02 08:18:59.34351+00', 4, 'green_potion', 'potion delivery'),
	(53, '2024-05-02 08:37:18.763075+00', -3, 'green_potion', '70 checked out.'),
	(54, '2024-05-02 08:37:18.760815+00', -7, 'blue_potion', '72 checked out.'),
	(55, '2024-05-02 08:37:18.766389+00', -1, 'red_potion', '71 checked out.'),
	(56, '2024-05-02 08:37:18.774502+00', -1, 'fortifying_insightf', '68 checked out.'),
	(57, '2024-05-02 08:37:18.941413+00', -1, 'green_potion', '73 checked out.'),
	(58, '2024-05-02 08:37:18.945683+00', -2, 'red_potion', '69 checked out.'),
	(59, '2024-05-02 10:16:21.02635+00', 5, 'red_potion', 'potion delivery'),
	(60, '2024-05-02 10:16:21.02635+00', 5, 'green_potion', 'potion delivery'),
	(61, '2024-05-02 10:16:21.02635+00', 5, 'blue_potion', 'potion delivery'),
	(62, '2024-05-02 10:28:41.18099+00', -4, 'blue_potion', '75 checked out.'),
	(63, '2024-05-02 10:28:41.181929+00', -1, 'blue_potion', '76 checked out.'),
	(64, '2024-05-02 10:28:41.232568+00', -4, 'green_potion', '77 checked out.'),
	(65, '2024-05-02 10:28:41.355646+00', -4, 'charming_insightful', '74 checked out.'),
	(66, '2024-05-02 12:36:52.8769+00', -1, 'red_potion', '81 checked out.'),
	(67, '2024-05-02 12:36:52.877635+00', -3, 'blue_potion', '78 checked out.'),
	(68, '2024-05-02 12:36:52.883412+00', -1, 'blue_potion', '79 checked out.'),
	(69, '2024-05-02 12:36:53.016086+00', -4, 'red_potion', '80 checked out.'),
	(70, '2024-05-02 14:17:37.33664+00', 5, 'red_potion', 'potion delivery'),
	(71, '2024-05-02 14:17:37.33664+00', 5, 'green_potion', 'potion delivery'),
	(72, '2024-05-02 14:17:37.33664+00', 5, 'blue_potion', 'potion delivery'),
	(73, '2024-05-02 14:27:54.930501+00', -3, 'green_potion', '84 checked out.'),
	(74, '2024-05-02 14:27:54.956105+00', -1, 'blue_potion', '83 checked out.'),
	(75, '2024-05-02 14:27:55.102781+00', -2, 'green_potion', '82 checked out.'),
	(76, '2024-05-02 16:36:21.746185+00', -3, 'red_potion', '85 checked out.'),
	(77, '2024-05-02 16:36:41.746583+00', -5, 'green_potion', '86 checked out.'),
	(78, '2024-05-02 18:17:27.034769+00', 5, 'red_potion', 'potion delivery'),
	(79, '2024-05-02 18:17:27.034769+00', 5, 'green_potion', 'potion delivery'),
	(80, '2024-05-02 18:17:27.034769+00', 5, 'blue_potion', 'potion delivery'),
	(81, '2024-05-02 18:21:59.392249+00', -5, 'blue_potion', '87 checked out.'),
	(82, '2024-05-02 22:17:20.18519+00', 12, 'red_potion', 'potion delivery'),
	(83, '2024-05-02 22:17:20.18519+00', 12, 'green_potion', 'potion delivery'),
	(84, '2024-05-03 00:24:50.119672+00', -7, 'green_potion', '89 checked out.'),
	(85, '2024-05-03 00:25:09.627919+00', -5, 'blue_potion', '88 checked out.'),
	(86, '2024-05-03 02:11:25.795576+00', 6, 'red_potion', 'potion delivery'),
	(87, '2024-05-03 02:11:25.795576+00', 6, 'green_potion', 'potion delivery'),
	(88, '2024-05-03 02:20:04.114497+00', -2, 'green_potion', '90 checked out.'),
	(89, '2024-05-03 02:20:23.697609+00', -3, 'green_potion', '91 checked out.'),
	(90, '2024-05-03 02:20:23.70835+00', -4, 'green_potion', '92 checked out.'),
	(91, '2024-05-03 04:33:32.099922+00', -2, 'green_potion', '96 checked out.'),
	(92, '2024-05-03 04:33:32.261607+00', -2, 'charming_jerking_po', '93 checked out.'),
	(93, '2024-05-03 04:33:52.941552+00', -5, 'green_potion', '95 checked out.'),
	(94, '2024-05-03 04:33:52.946182+00', -3, 'charming_jerking_po', '94 checked out.'),
	(95, '2024-05-03 08:18:53.755166+00', 2, 'charming_insightful', 'potion delivery'),
	(96, '2024-05-03 08:18:53.755166+00', 2, 'insightful_jerking_', 'potion delivery'),
	(97, '2024-05-03 08:18:53.755166+00', 1, 'fortifying_insightf', 'potion delivery'),
	(98, '2024-05-03 08:18:53.755166+00', 2, 'charming_jerking_po', 'potion delivery'),
	(99, '2024-05-03 08:18:53.755166+00', 1, 'charming_coruscatin', 'potion delivery'),
	(100, '2024-05-03 08:18:53.755166+00', 1, 'fortifying_coruscat', 'potion delivery'),
	(101, '2024-05-03 10:24:52.402053+00', -1, 'charming_coruscatin', '98 checked out.'),
	(102, '2024-05-03 10:24:52.404035+00', -2, 'charming_jerking_po', '99 checked out.'),
	(103, '2024-05-03 10:25:12.891115+00', -1, 'fortifying_insightf', '97 checked out.'),
	(104, '2024-05-03 14:25:44.663506+00', -1, 'fortifying_coruscat', '100 checked out.'),
	(105, '2024-05-03 22:23:47.666796+00', -1, 'red_potion', '101 checked out.'),
	(106, '2024-05-04 00:44:29.076389+00', -3, 'red_potion', '102 checked out.'),
	(107, '2024-05-04 02:29:25.686986+00', -1, 'red_potion', '103 checked out.'),
	(108, '2024-05-04 04:46:59.874678+00', -6, 'red_potion', '104 checked out.'),
	(109, '2024-05-04 04:46:59.881563+00', -7, 'red_potion', '105 checked out.'),
	(110, '2024-05-04 06:16:04.347478+00', 5, 'insightful_jerking_', 'potion delivery'),
	(111, '2024-05-04 06:16:04.347478+00', 1, 'fortifying_insightf', 'potion delivery'),
	(112, '2024-05-04 06:25:26.820306+00', -4, 'red_potion', '106 checked out.'),
	(113, '2024-05-04 06:25:27.016103+00', -3, 'red_potion', '107 checked out.'),
	(114, '2024-05-04 08:21:26.106109+00', 10, 'insightful_jerking_', 'potion delivery'),
	(115, '2024-05-04 10:14:52.576186+00', 5, 'insightful_jerking_', 'potion delivery'),
	(116, '2024-05-04 12:21:29.492415+00', 3, 'insightful_jerking_', 'potion delivery'),
	(117, '2024-05-04 12:40:42.436855+00', -1, 'fortifying_insightf', '108 checked out.'),
	(118, '2024-05-04 14:17:45.534441+00', 2, 'insightful_jerking_', 'potion delivery'),
	(119, '2024-05-04 16:22:27.096124+00', 1, 'insightful_jerking_', 'potion delivery'),
	(120, '2024-05-04 18:28:41.970991+00', -2, 'charming_insightful', '109 checked out.'),
	(121, '2024-05-04 20:40:34.140629+00', 2, 'insightful_jerking_', 'potion delivery'),
	(122, '2024-05-04 22:16:55.242487+00', 2, 'insightful_jerking_', 'potion delivery'),
	(123, '2024-05-05 06:05:00.726808+00', 3, 'blue_potion', 'potion delivery'),
	(124, '2024-05-05 08:22:35.450801+00', 4, 'red_potion', 'potion delivery'),
	(125, '2024-05-05 08:22:35.450801+00', 7, 'green_potion', 'potion delivery'),
	(126, '2024-05-05 10:24:48.688121+00', -6, 'green_potion', '111 checked out.'),
	(127, '2024-05-05 10:24:48.689772+00', -2, 'red_potion', '110 checked out.'),
	(128, '2024-05-05 10:24:48.689772+00', -1, 'green_potion', '112 checked out.'),
	(129, '2024-05-05 12:17:50.971061+00', 3, 'green_potion', 'potion delivery'),
	(130, '2024-05-05 12:17:50.971061+00', 3, 'blue_potion', 'potion delivery'),
	(131, '2024-05-05 12:17:50.971061+00', 1, 'insightful_jerking_', 'potion delivery'),
	(132, '2024-05-05 14:11:12.260935+00', 2, 'red_potion', 'potion delivery'),
	(133, '2024-05-05 14:19:52.695265+00', -3, 'green_potion', '113 checked out.'),
	(134, '2024-05-05 16:24:33.305038+00', 3, 'red_potion', 'potion delivery');


--
-- Data for Name: wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--



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
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."carts_id_seq"', 113, true);


--
-- Name: inventory_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."inventory_ledger_id_seq"', 213, true);


--
-- Name: potion_carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_carts_id_seq"', 96, true);


--
-- Name: potion_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_ledger_id_seq"', 134, true);


--
-- Name: wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."wishlist_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
