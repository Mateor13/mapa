DROP TABLE IF EXISTS provinciasEcuador;

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET character_set_connection=utf8mb4;

CREATE TABLE provinciasEcuador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    capital VARCHAR(100),
    area FLOAT,
    poblacion INT,
    latitud FLOAT,
    longitud FLOAT
);

ALTER DATABASE provinciasEC CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE provinciasEcuador CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO provinciasEcuador (nombre, capital, area, poblacion, latitud, longitud) VALUES
('Azuay','Cuenca',8309,881394,-2.90055,-79.00453),
('Bolívar','Guaranda',3945,183641,-1.59263,-79.00098),
('Cañar','Azogues',3180,276987,-2.73969,-78.84860),
('Carchi','Tulcán',3781,181396,0.81187,-77.71727),
('Chimborazo','Riobamba',6499,528681,-1.67098,-78.64712),
('Cotopaxi','Latacunga',6108,496072,-0.93521,-78.61554),
('El Oro','Machala',5769,742017,-3.25861,-79.96053),
('Esmeraldas','Esmeraldas',16132,599629,0.95920,-79.65397),
('Galápagos','Puerto Baquerizo Moreno',8010,33740,-0.90000,-89.60000),
('Guayas','Guayaquil',15300,4296000,-2.20584,-79.90795),
('Imbabura','Ibarra',4584,480000,0.35171,-78.12233),
('Loja','Loja',11062,511000,-3.99313,-79.20422),
('Los Ríos','Babahoyo',7205,880000,-1.80217,-79.53443),
('Manabí','Portoviejo',18939,1594000,-1.05458,-80.45445),
('Morona Santiago','Macas',23961,200000,-2.30868,-78.11135),
('Napo','Tena',13348,136000,-0.99380,-77.81286),
('Orellana','Coca',21070,161338,-0.93333,-75.66667),
('Pastaza','Puyo',29144,123000,-1.48389,-77.99389),
('Pichincha','Quito',9496,2888064,-0.22985,-78.52495),
('Santa Elena','Santa Elena',3759,401178,-2.22622,-80.85873),
('Santo Domingo de los Tsáchilas','Santo Domingo',3420,509101,-0.25305,-79.17536),
('Sucumbíos','Nueva Loja',18084,230000,0.08768,-76.89139),
('Tungurahua','Ambato',3346,590000,-1.25489,-78.62285),
('Zamora Chinchipe','Zamora',10584,123000,-4.06961,-78.95657);