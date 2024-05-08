
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
	(4, '2024-05-08 08:18:20.256704+00', false, true, 1, false),
	(5, '2024-05-08 12:17:01.031987+00', false, true, 1, false);


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
	(152, 'Harmony Fenella Shadowvale', 'Druid', 11, '2024-05-08 10:24:20.173623+00', true);


--
-- Data for Name: potions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."potions" ("red", "green", "blue", "dark", "price", "potion_sku", "name") VALUES
	(100, 0, 0, 0, 40, 'red_potion', 'Red Potion'),
	(0, 100, 0, 0, 50, 'green_potion', 'Green Potion'),
	(0, 0, 100, 0, 50, 'blue_potion', 'Blue Potion');


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
	(135, 'green_potion', 5, 152);


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
	(331, '2024-05-08 10:33:37.567057+00', 'gold', 250, '152 checked out.');


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
	(205, '2024-05-08 10:33:37.567057+00', -5, 'green_potion', '152 checked out.');


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
-- Name: capacity_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."capacity_ledger_id_seq"', 5, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."carts_id_seq"', 152, true);


--
-- Name: inventory_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."inventory_ledger_id_seq"', 331, true);


--
-- Name: potion_carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_carts_id_seq"', 135, true);


--
-- Name: potion_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."potion_ledger_id_seq"', 205, true);


--
-- Name: wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."wishlist_id_seq"', 3, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
