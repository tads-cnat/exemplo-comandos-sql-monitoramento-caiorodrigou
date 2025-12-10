INSERT INTO dbo.cidade (nome, estado) VALUES
('São Paulo', 'SP'),
('Campinas', 'SP'),
('Rio de Janeiro', 'RJ'),
('Niterói', 'RJ'),
('Salvador', 'BA'),
('Feira de Santana', 'BA'),
('Curitiba', 'PR'),
('Londrina', 'PR'),
('Belo Horizonte', 'MG'),
('Uberlândia', 'MG');


INSERT INTO dbo.localizacao (latitude, longitude, id_cidade) VALUES
(-23.5505, -46.6333, 1),
(-22.9056, -47.0608, 2),
(-22.9068, -43.1729, 3),
(-22.8832, -43.1034, 4),
(-12.9777, -38.5016, 5),
(-12.2664, -38.9663, 6),
(-25.4284, -49.2733, 7),
(-23.3045, -51.1696, 8),
(-19.9167, -43.9345, 9),
(-18.9140, -48.2740, 10);


INSERT INTO dbo.central (codigo) VALUES
('C0001'),
('C0002'),
('C0003'),
('C0004'),
('C0005'),
('A1001'),
('A1002'),
('B2001'),
('B2002'),
('B2003');


INSERT INTO dbo.tempo (tempo_min, tempo_max, precip_pluviom, dh_coleta, id_cidade) VALUES
(20, 28, 5.2, '2025-01-10 08:00', 1),
(19, 30, NULL, '2025-01-10 09:00', 2),
(21, 27, 0.0, '2025-01-10 10:00', 3),
(18, 26, 1.1, '2025-01-11 08:00', 4),
(25, 33, NULL, '2025-01-11 09:00', 5),
(22, 29, 3.0, '2025-01-11 10:00', 6),
(17, 24, 0.0, '2025-01-12 08:00', 7),
(16, 25, NULL, '2025-01-12 09:00', 8),
(23, 31, 2.4, '2025-01-12 10:00', 9),
(24, 32, NULL, '2025-01-13 08:00', 10);


INSERT INTO dbo.tempocentral (id_tempo, codigo_central) VALUES
(1, 'C0001'),
(1, 'C0002'),
(2, 'C0001'),
(3, 'C0003'),
(4, 'A1001'),
(5, 'A1001'),
(6, 'B2001'),
(7, 'B2002'),
(8, 'C0004'),
(9, 'C0005');
