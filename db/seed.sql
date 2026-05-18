-- ─────────────────────────────────────────────
-- Companies
-- ─────────────────────────────────────────────
INSERT INTO companies (id, name, plan, created_at) VALUES
  (1, 'Acme Corp',       'enterprise', '2023-03-15T09:00:00Z'),
  (2, 'BrightPath SAS',  'pro',        '2023-07-22T14:30:00Z'),
  (3, 'Horizon Conseil', 'starter',    '2024-01-10T11:00:00Z');

-- ─────────────────────────────────────────────
-- Users — Acme Corp (company_id = 1)
-- ─────────────────────────────────────────────
INSERT INTO users (id, company_id, email, first_name, last_name, status, created_at, deleted_at) VALUES
  (1,  1, 'alice.martin@acme.com',       'Alice',    'Martin',    'active',   '2023-03-20T10:00:00Z', NULL),
  (2,  1, 'bob.dupont@acme.com',         'Bob',      'Dupont',    'active',   '2023-03-20T10:05:00Z', NULL),
  (3,  1, 'claire.leroy@acme.com',       'Claire',   'Leroy',     'active',   '2023-04-01T09:00:00Z', NULL),
  (4,  1, 'david.moreau@acme.com',       'David',    'Moreau',    'active',   '2023-04-15T08:30:00Z', NULL),
  (5,  1, 'emma.petit@acme.com',         'Emma',     'Petit',     'active',   '2023-05-02T14:00:00Z', NULL),
  (6,  1, 'francois.blanc@acme.com',     'François', 'Blanc',     'active',   '2023-05-10T11:30:00Z', NULL),
  (7,  1, 'gabriel.simon@acme.com',      'Gabriel',  'Simon',     'active',   '2023-06-01T09:15:00Z', NULL),
  (8,  1, 'helene.thomas@acme.com',      'Hélène',   'Thomas',    'active',   '2023-06-15T10:00:00Z', NULL),
  (9,  1, 'ivan.bernard@acme.com',       'Ivan',     'Bernard',   'active',   '2023-07-01T08:00:00Z', NULL),
  (10, 1, 'julia.robert@acme.com',       'Julia',    'Robert',    'invited',  '2023-07-20T15:00:00Z', NULL),
  (11, 1, 'kevin.richard@acme.com',      'Kevin',    'Richard',   'active',   '2023-08-05T09:00:00Z', NULL),
  (12, 1, 'laura.garcia@acme.com',       'Laura',    'Garcia',    'active',   '2023-08-12T10:30:00Z', NULL),
  (13, 1, 'marc.lefebvre@acme.com',      'Marc',     'Lefebvre',  'disabled', '2023-09-01T11:00:00Z', NULL),
  (14, 1, 'nadia.dubois@acme.com',       'Nadia',    'Dubois',    'active',   '2023-09-15T14:00:00Z', NULL),
  (15, 1, 'olivier.roux@acme.com',       'Olivier',  'Roux',      'active',   '2023-10-01T09:30:00Z', NULL),
  (16, 1, 'pauline.vincent@acme.com',    'Pauline',  'Vincent',   'active',   '2023-10-20T10:00:00Z', NULL),
  (17, 1, 'quentin.morel@acme.com',      'Quentin',  'Morel',     'active',   '2023-11-01T08:45:00Z', NULL),
  (18, 1, 'rachel.girard@acme.com',      'Rachel',   'Girard',    'active',   '2023-11-15T11:30:00Z', NULL),
  (19, 1, 'samuel.fournier@acme.com',    'Samuel',   'Fournier',  'active',   '2023-12-01T10:00:00Z', NULL),
  (20, 1, 'thibault.faure@acme.com',     'Thibault', 'Faure',     'active',   '2024-01-10T09:00:00Z', NULL),
  -- soft-deleted users Acme
  (21, 1, 'ursula.henry@acme.com',       'Ursula',   'Henry',     'disabled', '2023-05-01T10:00:00Z', '2024-02-14T17:00:00Z'),
  (22, 1, 'victor.clement@acme.com',     'Victor',   'Clément',   'disabled', '2023-06-01T10:00:00Z', '2024-03-01T09:00:00Z'),
  (23, 1, 'wendy.perrin@acme.com',       'Wendy',    'Perrin',    'disabled', '2023-07-01T10:00:00Z', '2024-04-10T16:00:00Z');

-- ─────────────────────────────────────────────
-- Users — BrightPath SAS (company_id = 2)
-- ─────────────────────────────────────────────
INSERT INTO users (id, company_id, email, first_name, last_name, status, created_at, deleted_at) VALUES
  (30, 2, 'anna.durand@brightpath.fr',   'Anna',     'Durand',    'active',   '2023-07-25T09:00:00Z', NULL),
  (31, 2, 'benoit.lambert@brightpath.fr','Benoît',   'Lambert',   'active',   '2023-08-01T10:00:00Z', NULL),
  (32, 2, 'celine.michel@brightpath.fr', 'Céline',   'Michel',    'active',   '2023-08-15T11:00:00Z', NULL),
  (33, 2, 'damien.lecomte@brightpath.fr','Damien',   'Lecomte',   'active',   '2023-09-01T09:30:00Z', NULL),
  (34, 2, 'elisa.colin@brightpath.fr',   'Elisa',    'Colin',     'invited',  '2023-09-20T14:00:00Z', NULL),
  (35, 2, 'felix.meunier@brightpath.fr', 'Félix',    'Meunier',   'active',   '2023-10-05T10:00:00Z', NULL),
  (36, 2, 'gael.bonnet@brightpath.fr',   'Gaël',     'Bonnet',    'active',   '2023-10-15T08:30:00Z', NULL),
  (37, 2, 'ines.barbier@brightpath.fr',  'Inès',     'Barbier',   'active',   '2023-11-01T09:00:00Z', NULL),
  (38, 2, 'jerome.roy@brightpath.fr',    'Jérôme',   'Roy',       'active',   '2023-11-20T11:30:00Z', NULL),
  (39, 2, 'karine.adam@brightpath.fr',   'Karine',   'Adam',      'active',   '2024-01-05T10:00:00Z', NULL),
  -- soft-deleted BrightPath
  (40, 2, 'lionel.chevalier@brightpath.fr','Lionel', 'Chevalier', 'disabled', '2023-08-01T09:00:00Z', '2024-01-31T18:00:00Z'),
  (41, 2, 'manon.pierre@brightpath.fr',  'Manon',    'Pierre',    'disabled', '2023-09-01T09:00:00Z', '2024-03-15T10:00:00Z');

-- ─────────────────────────────────────────────
-- Users — Horizon Conseil (company_id = 3)
-- ─────────────────────────────────────────────
INSERT INTO users (id, company_id, email, first_name, last_name, status, created_at, deleted_at) VALUES
  (50, 3, 'axel.rousseau@horizon.fr',    'Axel',     'Rousseau',  'active',   '2024-01-12T09:00:00Z', NULL),
  (51, 3, 'beatrice.guerard@horizon.fr', 'Béatrice', 'Guérard',   'active',   '2024-01-20T10:30:00Z', NULL),
  (52, 3, 'charles.noel@horizon.fr',     'Charles',  'Noël',      'active',   '2024-02-01T09:00:00Z', NULL),
  (53, 3, 'diana.vidal@horizon.fr',      'Diana',    'Vidal',     'invited',  '2024-02-15T14:00:00Z', NULL),
  (54, 3, 'eric.marchand@horizon.fr',    'Éric',     'Marchand',  'active',   '2024-03-01T09:30:00Z', NULL),
  -- soft-deleted Horizon
  (55, 3, 'fanny.giraud@horizon.fr',     'Fanny',    'Giraud',    'disabled', '2024-01-12T09:00:00Z', '2024-04-20T17:00:00Z');

-- ─────────────────────────────────────────────
-- Missions — Acme Corp (company_id = 1)
-- ─────────────────────────────────────────────
INSERT INTO missions (id, company_id, title, starts_at, ends_at, created_at) VALUES
  (1,  1, 'Maraude Paris Centre',             date('now', '-25 days'), date('now', '-24 days'), date('now', '-40 days')),
  (2,  1, 'Jardinage solidaire — Vincennes',  date('now', '-20 days'), date('now', '-19 days'), date('now', '-35 days')),
  (3,  1, 'Collecte alimentaire Carrefour',   date('now', '-15 days'), date('now', '-14 days'), date('now', '-28 days')),
  (4,  1, 'Soutien scolaire quartier Nord',   date('now', '-10 days'), date('now', '-8 days'),  date('now', '-20 days')),
  (5,  1, 'Nettoyage berges de Seine',        date('now', '-5 days'),  date('now', '-4 days'),  date('now', '-15 days')),
  (6,  1, 'Accompagnement EHPAD Belleville',  date('now', '-3 days'),  date('now', '-2 days'),  date('now', '-12 days')),
  (7,  1, 'Fresque du Numérique — atelier',   date('now', '-28 days'), date('now', '-28 days'), date('now', '-42 days')),
  (8,  1, 'Distribution petit-déjeuner',      date('now', '-18 days'), date('now', '-18 days'), date('now', '-30 days'));

-- ─────────────────────────────────────────────
-- Missions — BrightPath SAS (company_id = 2)
-- ─────────────────────────────────────────────
INSERT INTO missions (id, company_id, title, starts_at, ends_at, created_at) VALUES
  (9,  2, 'Coaching CV — Pôle Emploi',        date('now', '-22 days'), date('now', '-21 days'), date('now', '-36 days')),
  (10, 2, 'Sensibilisation écologie collège',  date('now', '-12 days'), date('now', '-11 days'), date('now', '-25 days'));

-- ─────────────────────────────────────────────
-- Missions — Horizon Conseil (company_id = 3)
-- ─────────────────────────────────────────────
INSERT INTO missions (id, company_id, title, starts_at, ends_at, created_at) VALUES
  (11, 3, 'Visite maison de retraite',         date('now', '-8 days'),  date('now', '-7 days'),  date('now', '-18 days')),
  (12, 3, 'Atelier numérique seniors',         date('now', '-4 days'),  date('now', '-3 days'),  date('now', '-14 days'));

-- ─────────────────────────────────────────────
-- Participations — Acme Corp missions
-- ─────────────────────────────────────────────
INSERT INTO participations (id, user_id, mission_id, status, registered_at) VALUES
  -- Mission 1: Maraude Paris Centre
  (1,  1,  1, 'completed',  date('now', '-27 days')),
  (2,  2,  1, 'completed',  date('now', '-27 days')),
  (3,  3,  1, 'completed',  date('now', '-27 days')),
  (4,  4,  1, 'completed',  date('now', '-27 days')),
  (5,  5,  1, 'completed',  date('now', '-26 days')),
  (6,  6,  1, 'completed',  date('now', '-26 days')),
  (7,  7,  1, 'cancelled',  date('now', '-26 days')),
  (8,  22, 1, 'completed',  date('now', '-27 days')),  -- soft-deleted user
  -- Mission 2: Jardinage solidaire
  (9,  1,  2, 'completed',  date('now', '-22 days')),
  (10, 3,  2, 'completed',  date('now', '-22 days')),
  (11, 5,  2, 'completed',  date('now', '-22 days')),
  (12, 8,  2, 'completed',  date('now', '-21 days')),
  (13, 9,  2, 'completed',  date('now', '-21 days')),
  (14, 11, 2, 'completed',  date('now', '-21 days')),
  (15, 12, 2, 'completed',  date('now', '-21 days')),
  (16, 14, 2, 'cancelled',  date('now', '-21 days')),
  -- Mission 3: Collecte alimentaire
  (17, 2,  3, 'confirmed',  date('now', '-17 days')),
  (18, 4,  3, 'confirmed',  date('now', '-17 days')),
  (19, 6,  3, 'confirmed',  date('now', '-16 days')),
  (20, 8,  3, 'cancelled',  date('now', '-16 days')),
  (21, 10, 3, 'cancelled',  date('now', '-16 days')),
  (22, 15, 3, 'confirmed',  date('now', '-16 days')),
  (23, 16, 3, 'confirmed',  date('now', '-16 days')),
  (24, 21, 3, 'confirmed',  date('now', '-17 days')),  -- soft-deleted user
  -- Mission 4: Soutien scolaire
  (25, 1,  4, 'confirmed',  date('now', '-12 days')),
  (26, 3,  4, 'confirmed',  date('now', '-12 days')),
  (27, 7,  4, 'confirmed',  date('now', '-11 days')),
  (28, 9,  4, 'confirmed',  date('now', '-11 days')),
  (29, 12, 4, 'cancelled',  date('now', '-11 days')),
  (30, 17, 4, 'cancelled',  date('now', '-10 days')),
  (31, 18, 4, 'confirmed',  date('now', '-10 days')),
  (32, 19, 4, 'confirmed',  date('now', '-10 days')),
  -- Mission 5: Nettoyage berges
  (33, 2,  5, 'confirmed',  date('now', '-7 days')),
  (34, 4,  5, 'confirmed',  date('now', '-7 days')),
  (35, 5,  5, 'confirmed',  date('now', '-7 days')),
  (36, 6,  5, 'confirmed',  date('now', '-6 days')),
  (37, 11, 5, 'cancelled',  date('now', '-6 days')),
  (38, 14, 5, 'cancelled',  date('now', '-6 days')),
  (39, 15, 5, 'confirmed',  date('now', '-6 days')),
  (40, 20, 5, 'confirmed',  date('now', '-6 days')),
  -- Mission 6: EHPAD Belleville
  (41, 1,  6, 'confirmed',  date('now', '-5 days')),
  (42, 3,  6, 'confirmed',  date('now', '-5 days')),
  (43, 8,  6, 'confirmed',  date('now', '-4 days')),
  (44, 16, 6, 'confirmed',  date('now', '-4 days')),
  (45, 18, 6, 'cancelled',  date('now', '-4 days')),
  (46, 19, 6, 'confirmed',  date('now', '-4 days')),
  -- Mission 7: Fresque du Numérique (28 jours)
  (47, 2,  7, 'completed',  date('now', '-29 days')),
  (48, 6,  7, 'completed',  date('now', '-29 days')),
  (49, 7,  7, 'completed',  date('now', '-29 days')),
  (50, 9,  7, 'completed',  date('now', '-29 days')),
  (51, 13, 7, 'completed',  date('now', '-29 days')),
  -- Mission 8: Distribution petit-déjeuner
  (52, 1,  8, 'completed',  date('now', '-20 days')),
  (53, 4,  8, 'completed',  date('now', '-20 days')),
  (54, 5,  8, 'completed',  date('now', '-19 days')),
  (55, 8,  8, 'completed',  date('now', '-19 days')),
  (56, 11, 8, 'completed',  date('now', '-19 days')),
  (57, 17, 8, 'completed',  date('now', '-19 days'));

-- ─────────────────────────────────────────────
-- Participations — BrightPath & Horizon
-- ─────────────────────────────────────────────
INSERT INTO participations (id, user_id, mission_id, status, registered_at) VALUES
  (60, 30, 9,  'completed',  date('now', '-24 days')),
  (61, 31, 9,  'completed',  date('now', '-24 days')),
  (62, 32, 9,  'completed',  date('now', '-23 days')),
  (63, 33, 9,  'completed',  date('now', '-23 days')),
  (64, 35, 9,  'cancelled',  date('now', '-23 days')),
  (65, 30, 10, 'confirmed',  date('now', '-14 days')),
  (66, 36, 10, 'confirmed',  date('now', '-14 days')),
  (67, 37, 10, 'confirmed',  date('now', '-13 days')),
  (68, 38, 10, 'cancelled',  date('now', '-13 days')),
  (70, 50, 11, 'confirmed',  date('now', '-10 days')),
  (71, 51, 11, 'confirmed',  date('now', '-10 days')),
  (72, 52, 11, 'cancelled',  date('now', '-9 days')),
  (73, 50, 12, 'registered', date('now', '-6 days')),
  (74, 54, 12, 'registered', date('now', '-6 days'));

-- ─────────────────────────────────────────────
-- Mission roles
-- Règle : ~70% ont 1 rôle, ~30% ont 2-3 rôles
-- ─────────────────────────────────────────────

-- Mission 1 participations (1-8) — quelques multi-rôles
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (1, 'leader',    date('now', '-27 days')),   -- Alice: leader only
  (1, 'mentor',    date('now', '-27 days')),   -- Alice: aussi mentor → DOUBLON
  (2, 'volunteer', date('now', '-27 days')),
  (3, 'volunteer', date('now', '-27 days')),
  (3, 'leader',    date('now', '-27 days')),   -- Claire: volunteer + leader → DOUBLON
  (4, 'volunteer', date('now', '-27 days')),
  (5, 'mentor',    date('now', '-26 days')),
  (6, 'volunteer', date('now', '-26 days')),
  (7, 'volunteer', date('now', '-26 days')),
  (8, 'volunteer', date('now', '-27 days'));

-- Mission 2 participations (9-16)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (9,  'leader',    date('now', '-22 days')),
  (9,  'mentor',    date('now', '-22 days')),  -- DOUBLON
  (10, 'volunteer', date('now', '-22 days')),
  (11, 'volunteer', date('now', '-22 days')),
  (12, 'leader',    date('now', '-21 days')),
  (13, 'volunteer', date('now', '-21 days')),
  (14, 'volunteer', date('now', '-21 days')),
  (14, 'mentor',    date('now', '-21 days')),  -- DOUBLON
  (15, 'volunteer', date('now', '-21 days')),
  (16, 'volunteer', date('now', '-21 days'));

-- Mission 3 participations (17-24)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (17, 'leader',    date('now', '-17 days')),
  (17, 'volunteer', date('now', '-17 days')),  -- DOUBLON
  (18, 'volunteer', date('now', '-17 days')),
  (19, 'volunteer', date('now', '-16 days')),
  (20, 'mentor',    date('now', '-16 days')),
  (21, 'volunteer', date('now', '-16 days')),
  (22, 'volunteer', date('now', '-16 days')),
  (23, 'leader',    date('now', '-16 days')),
  (23, 'mentor',    date('now', '-16 days')),  -- DOUBLON
  (24, 'volunteer', date('now', '-17 days'));

-- Mission 4 participations (25-32)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (25, 'leader',    date('now', '-12 days')),
  (26, 'volunteer', date('now', '-12 days')),
  (27, 'mentor',    date('now', '-11 days')),
  (27, 'volunteer', date('now', '-11 days')),  -- DOUBLON
  (28, 'volunteer', date('now', '-11 days')),
  (29, 'volunteer', date('now', '-11 days')),
  (30, 'volunteer', date('now', '-10 days')),
  (31, 'leader',    date('now', '-10 days')),
  (31, 'mentor',    date('now', '-10 days')),  -- DOUBLON
  (32, 'volunteer', date('now', '-10 days'));

-- Mission 5 participations (33-40)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (33, 'volunteer', date('now', '-7 days')),
  (34, 'leader',    date('now', '-7 days')),
  (34, 'mentor',    date('now', '-7 days')),   -- DOUBLON
  (35, 'volunteer', date('now', '-7 days')),
  (36, 'volunteer', date('now', '-6 days')),
  (37, 'volunteer', date('now', '-6 days')),
  (38, 'volunteer', date('now', '-6 days')),
  (39, 'leader',    date('now', '-6 days')),
  (39, 'volunteer', date('now', '-6 days')),   -- DOUBLON
  (40, 'volunteer', date('now', '-6 days'));

-- Mission 6 participations (41-46)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (41, 'leader',    date('now', '-5 days')),
  (41, 'mentor',    date('now', '-5 days')),   -- DOUBLON
  (42, 'volunteer', date('now', '-5 days')),
  (43, 'mentor',    date('now', '-4 days')),
  (44, 'volunteer', date('now', '-4 days')),
  (45, 'volunteer', date('now', '-4 days')),
  (46, 'leader',    date('now', '-4 days'));

-- Mission 7 participations (47-51) — avant la feature multi-rôles, 1 rôle chacun
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (47, 'leader',    date('now', '-29 days')),
  (48, 'volunteer', date('now', '-29 days')),
  (49, 'volunteer', date('now', '-29 days')),
  (50, 'mentor',    date('now', '-29 days')),
  (51, 'volunteer', date('now', '-29 days'));

-- Mission 8 participations (52-57)
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (52, 'leader',    date('now', '-20 days')),
  (52, 'mentor',    date('now', '-20 days')),  -- DOUBLON
  (53, 'volunteer', date('now', '-20 days')),
  (54, 'volunteer', date('now', '-19 days')),
  (55, 'volunteer', date('now', '-19 days')),
  (56, 'leader',    date('now', '-19 days')),
  (56, 'volunteer', date('now', '-19 days')),  -- DOUBLON
  (57, 'mentor',    date('now', '-19 days'));

-- BrightPath roles
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (60, 'leader',    date('now', '-24 days')),
  (61, 'volunteer', date('now', '-24 days')),
  (62, 'volunteer', date('now', '-23 days')),
  (63, 'mentor',    date('now', '-23 days')),
  (64, 'volunteer', date('now', '-23 days')),
  (65, 'leader',    date('now', '-14 days')),
  (65, 'mentor',    date('now', '-14 days')),
  (66, 'volunteer', date('now', '-14 days')),
  (67, 'volunteer', date('now', '-13 days')),
  (68, 'volunteer', date('now', '-13 days'));

-- Horizon roles
INSERT INTO mission_roles (participation_id, role, assigned_at) VALUES
  (70, 'leader',    date('now', '-10 days')),
  (71, 'volunteer', date('now', '-10 days')),
  (72, 'mentor',    date('now', '-9 days')),
  (73, 'volunteer', date('now', '-6 days')),
  (74, 'volunteer', date('now', '-6 days'));
