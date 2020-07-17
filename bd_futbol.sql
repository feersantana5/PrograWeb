/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Santana
 * Created: 12-ene-2019
 */

CREATE TABLE ligas (
    nombre_liga VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    PRIMARY KEY(nombre_liga)
);
INSERT INTO ligas VALUES ('Premier League', 'Inglaterra', 'Primera Division');
INSERT INTO ligas VALUES ('Liga Santander', 'España', 'Primera Division');
INSERT INTO ligas VALUES ('Liga 123', 'España', 'Segunda Division');


CREATE TABLE equipos (
    nombre_equipo VARCHAR(100) NOT NULL,
    nombre_liga VARCHAR(100) NOT NULL,
    partidos_jugados int NOT NULL,
    victorias int NOT NULL,
    empates int NOT NULL,
    derrotas int NOT NULL,
    puntos int NOT NULL,
    PRIMARY KEY(nombre_equipo),
    FOREIGN KEY(nombre_liga) REFERENCES ligas(nombre_liga)
);
INSERT INTO equipos VALUES ('Real Madrid', 'Liga Santander', '4','3','1','0','10');
INSERT INTO equipos VALUES ('FC Barcelona', 'Liga Santander', '4','2','2','0','8');
INSERT INTO equipos VALUES ('CD Tenerife', 'Liga 123', '4','1','0','3','3');
INSERT INTO equipos VALUES ('UD Las Palmas', 'Liga 123', '4','2','1','1','7');
INSERT INTO equipos VALUES ('Manchester City', 'Premier League', '4','4','0','0','12');
INSERT INTO equipos VALUES ('Manchester United', 'Premier League', '4','3','1','0','10');

INSERT INTO equipos VALUES ('Atletico de Madrid', 'Liga Santander', '4','2','1','1','7');
INSERT INTO equipos VALUES ('Sevilla', 'Liga Santander', '4','1','3','0','6');
INSERT INTO equipos VALUES ('Liverpool', 'Premier League', '4','4','0','0','12');
INSERT INTO equipos VALUES ('Chelsea', 'Premier League', '4','2','2','0','8');
INSERT INTO equipos VALUES ('Cadiz', 'Liga 123', '4','1','1','2','4');

CREATE TABLE jugadores (
    nombre_jugador VARCHAR(100) NOT NULL,
    nombre_equipo VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(100) NOT NULL,
    dorsal int NOT NULL,
    goles int NOT NULL,
    PRIMARY KEY(nombre_jugador),
    FOREIGN KEY(nombre_equipo) REFERENCES equipos(nombre_equipo)
);
INSERT INTO jugadores VALUES ('Messi', 'FC Barcelona', 'Argentina','10','8');
INSERT INTO jugadores VALUES ('Sergio Ramos', 'Real Madrid', 'España','4','1');
INSERT INTO jugadores VALUES ('Suso', 'CD Tenerife', 'España','10','2');
INSERT INTO jugadores VALUES ('Rubén Castro', 'UD Las Palmas', 'España','7','8');
INSERT INTO jugadores VALUES ('Sergio Aguero', 'Manchester City', 'Argentina','9','6');
INSERT INTO jugadores VALUES ('David Silva', 'Manchester City', 'España','21','0');
INSERT INTO jugadores VALUES ('David de Gea', 'Manchester United', 'España','1','0');
INSERT INTO jugadores VALUES ('Paul Pogba', 'Manchester United', 'Francia','6','2');

INSERT INTO jugadores VALUES ('Pique', 'FC Barcelona', 'España','3','2');
INSERT INTO jugadores VALUES ('Sergio Busquet', 'FC Barcelona', 'España','5','1');
INSERT INTO jugadores VALUES ('Jordi Alba', 'FC Barcelona', 'España','18','1');
INSERT INTO jugadores VALUES ('Denis Suarez', 'FC Barcelona', 'España','6','2');
INSERT INTO jugadores VALUES ('Sergi Roberto', 'FC Barcelona', 'España','20','0');
INSERT INTO jugadores VALUES ('Dembele', 'FC Barcelona', 'Francia','11','7');
INSERT INTO jugadores VALUES ('Coutinho', 'FC Barcelona', 'Brasil','7','3');
INSERT INTO jugadores VALUES ('Malcom', 'FC Barcelona', 'Brasil','14','0');
INSERT INTO jugadores VALUES ('Arthur', 'FC Barcelona', 'Brasil','8','0');
INSERT INTO jugadores VALUES ('Samuel Umtiti', 'FC Barcelona', 'Francia','23','0');

INSERT INTO jugadores VALUES ('Kiko Casilla', 'Real Madrid', 'España','13','0');
INSERT INTO jugadores VALUES ('Carvajal', 'Real Madrid', 'España','2','1');
INSERT INTO jugadores VALUES ('Varane', 'Real Madrid', 'Francia','5','0');
INSERT INTO jugadores VALUES ('Marcelo', 'Real Madrid', 'Brasil','12','0');
INSERT INTO jugadores VALUES ('Casemiro', 'Real Madrid', 'Brasil','14','0');
INSERT INTO jugadores VALUES ('Asensio', 'Real Madrid', 'España','20','1');
INSERT INTO jugadores VALUES ('Isco', 'Real Madrid', 'España','22','1');
INSERT INTO jugadores VALUES ('Benzema', 'Real Madrid', 'Francia','9','3');
INSERT INTO jugadores VALUES ('Vinicius', 'Real Madrid', 'Brasil','28','3');
INSERT INTO jugadores VALUES ('Ceballos', 'Real Madrid', 'España','24','0');

INSERT INTO jugadores VALUES ('Luis Milla', 'CD Tenerife', 'España','6','2');
INSERT INTO jugadores VALUES ('Aitor Sanz', 'CD Tenerife', 'España','16','0');
INSERT INTO jugadores VALUES ('Undabarrena', 'CD Tenerife', 'España','20','1');
INSERT INTO jugadores VALUES ('Naranjo', 'CD Tenerife', 'España','24','2');
INSERT INTO jugadores VALUES ('Nano', 'CD Tenerife', 'España','22','0');
INSERT INTO jugadores VALUES ('Camara', 'CD Tenerife', 'España','23','0');
INSERT INTO jugadores VALUES ('Tyronne', 'CD Tenerife', 'España','11','0');
INSERT INTO jugadores VALUES ('Jorge Saenz', 'CD Tenerife', 'España','21','3');
INSERT INTO jugadores VALUES ('Camille', 'CD Tenerife', 'Francia','4','0');
INSERT INTO jugadores VALUES ('Coniglio', 'CD Tenerife', 'Argentina','8','0');

INSERT INTO jugadores VALUES ('Cala', 'UD Las Palmas', 'España','20','0');
INSERT INTO jugadores VALUES ('Tana', 'UD Las Palmas', 'España','24','1');
INSERT INTO jugadores VALUES ('Maikel Mesa', 'UD Las Palmas', 'España','8','2');
INSERT INTO jugadores VALUES ('Momo', 'UD Las Palmas', 'España','11','1');
INSERT INTO jugadores VALUES ('Sergio Araujo', 'UD Las Palmas', 'España','10','4');
INSERT INTO jugadores VALUES ('Rafa Mir', 'UD Las Palmas', 'España','9','3');
INSERT INTO jugadores VALUES ('Peñalba', 'UD Las Palmas', 'Argentina','22','0');
INSERT INTO jugadores VALUES ('Sacko', 'UD Las Palmas', 'Francia','25','0');
INSERT INTO jugadores VALUES ('Mantovani', 'UD Las Palmas', 'Argentina','21','0');
INSERT INTO jugadores VALUES ('de la Bella', 'UD Las Palmas', 'España','3','0');

INSERT INTO jugadores VALUES ('Laporte', 'Manchester City', 'Francia','14','0');
INSERT INTO jugadores VALUES ('Mendy', 'Manchester City', 'Francia','22','1');
INSERT INTO jugadores VALUES ('Sane', 'Manchester City', 'Alemania','19','4');
INSERT INTO jugadores VALUES ('Gabriel Jesus', 'Manchester City', 'Brasil','33','2');
INSERT INTO jugadores VALUES ('Fernandinho', 'Manchester City', 'Brasil','25','1');
INSERT INTO jugadores VALUES ('Danilo', 'Manchester City', 'Brasil','3','0');
INSERT INTO jugadores VALUES ('Sterling', 'Manchester City', 'Inglaterra','7','2');
INSERT INTO jugadores VALUES ('Stones', 'Manchester City', 'Inglaterra','5','0');
INSERT INTO jugadores VALUES ('Otamendi', 'Manchester City', 'Argentina','30','0');

INSERT INTO jugadores VALUES ('Sergio Romero', 'Manchester United', 'Argentina','22','0');
INSERT INTO jugadores VALUES ('Marcos Rojo', 'Manchester United', 'Argentina','16','0');
INSERT INTO jugadores VALUES ('Ander Herrera', 'Manchester United', 'España','21','1');
INSERT INTO jugadores VALUES ('Mata', 'Manchester United', 'España','8','1');
INSERT INTO jugadores VALUES ('Lingard', 'Manchester United', 'Inglaterra','14','2');
INSERT INTO jugadores VALUES ('Rashford', 'Manchester United', 'Inglaterra','10','2');
INSERT INTO jugadores VALUES ('Ashley Young', 'Manchester United', 'Inglaterra','18','0');
INSERT INTO jugadores VALUES ('Luke Shaw', 'Manchester United', 'Inglaterra','23','0');
INSERT INTO jugadores VALUES ('Fred', 'Manchester United', 'Brasil','17','1');

INSERT INTO jugadores VALUES ('Adan', 'Atletico de Madrid', 'España','1','0');
INSERT INTO jugadores VALUES ('Juanfran', 'Atletico de Madrid', 'España','20','0');
INSERT INTO jugadores VALUES ('Rodri', 'Atletico de Madrid', 'España','14','1');
INSERT INTO jugadores VALUES ('Saul', 'Atletico de Madrid', 'España','8','2');
INSERT INTO jugadores VALUES ('Koke', 'Atletico de Madrid', 'España','6','1');
INSERT INTO jugadores VALUES ('Vitolo', 'Atletico de Madrid', 'España','23','2');
INSERT INTO jugadores VALUES ('Diego Costa', 'Atletico de Madrid', 'España','19','4');
INSERT INTO jugadores VALUES ('Lucas Hernandez', 'Atletico de Madrid', 'Francia','21','1');
INSERT INTO jugadores VALUES ('Griezmann', 'Atletico de Madrid', 'Francia','7','6');
INSERT INTO jugadores VALUES ('Lemar', 'Atletico de Madrid', 'Francia','11','1');
INSERT INTO jugadores VALUES ('Filipe Luis', 'Atletico de Madrid', 'Brasil','3','0');

INSERT INTO jugadores VALUES ('Roque Mesa', 'Sevilla', 'España','7','2');
INSERT INTO jugadores VALUES ('Pablo Sarabia', 'Sevilla', 'España','17','0');
INSERT INTO jugadores VALUES ('Nolito', 'Sevilla', 'España','8','0');
INSERT INTO jugadores VALUES ('Borja Lasso', 'Sevilla', 'España','20','0');
INSERT INTO jugadores VALUES ('Aleix Vidal', 'Sevilla', 'España','11','0');
INSERT INTO jugadores VALUES ('Jesus Navas', 'Sevilla', 'España','16','3');
INSERT INTO jugadores VALUES ('Banega', 'Sevilla', 'Argentina','10','0');
INSERT INTO jugadores VALUES ('Mercado', 'Sevilla', 'Argentina','25','0');
INSERT INTO jugadores VALUES ('Carrico', 'Sevilla', 'Portugal','6','0');
INSERT INTO jugadores VALUES ('Andre Silva', 'Sevilla', 'Francia','9','0');
INSERT INTO jugadores VALUES ('Ben Yedder', 'Sevilla', 'Portugal','5','0');

INSERT INTO jugadores VALUES ('Kepa', 'Chelsea', 'España','1','0');
INSERT INTO jugadores VALUES ('Pedro', 'Chelsea', 'España','11','2');
INSERT INTO jugadores VALUES ('Morata', 'Chelsea', 'España','29','3');
INSERT INTO jugadores VALUES ('Marcos Alonso', 'Chelsea', 'España','3','1');
INSERT INTO jugadores VALUES ('Azpilicueta', 'Chelsea', 'España','28','1');
INSERT INTO jugadores VALUES ('Cesc Fabregas', 'Chelsea', 'España','4','1');
INSERT INTO jugadores VALUES ('Giroud', 'Chelsea', 'Francia','18','3');
INSERT INTO jugadores VALUES ('Willian', 'Chelsea', 'Brasil','22','2');
INSERT INTO jugadores VALUES ('David Luiz', 'Chelsea', 'Brasil','30','0');
INSERT INTO jugadores VALUES ('Gary Cahill', 'Chelsea', 'Inglaterra','24','0');
INSERT INTO jugadores VALUES ('Barkley', 'Chelsea', 'Inglaterra','8','0');
INSERT INTO jugadores VALUES ('Willy Caballero', 'Chelsea', 'Argentina','13','0');
INSERT INTO jugadores VALUES ('Lotus-Cheek', 'Chelsea', 'Inglaterra','12','0');

INSERT INTO jugadores VALUES ('Sturridge', 'Liverpool', 'Inglaterra','15','3');
INSERT INTO jugadores VALUES ('Lallana', 'Liverpool', 'Inglaterra','20','0');
INSERT INTO jugadores VALUES ('Milner', 'Liverpool', 'Inglaterra','7','0');
INSERT INTO jugadores VALUES ('Oxlade-Chamberlain', 'Liverpool', 'Inglaterra','21','0');
INSERT INTO jugadores VALUES ('Jordan Henderson', 'Liverpool', 'Inglaterra','14','0');
INSERT INTO jugadores VALUES ('Fabinho', 'Liverpool', 'Brasil','3','0');
INSERT INTO jugadores VALUES ('Alberto Moreno', 'Liverpool', 'España','18','1');
INSERT INTO jugadores VALUES ('Alisson', 'Liverpool', 'Brasil','13','0');
INSERT INTO jugadores VALUES ('Alexander-Arnold', 'Liverpool', 'Inglaterra','66','0');
INSERT INTO jugadores VALUES ('Matip', 'Liverpool', 'Alemania','32','0');
INSERT INTO jugadores VALUES ('Joe Gomez', 'Liverpool', 'Inglaterra','12','0');

INSERT INTO jugadores VALUES ('Cifuentes', 'Cadiz', 'España','1','0');
INSERT INTO jugadores VALUES ('Jose Mari', 'Cadiz', 'España','6','1');
INSERT INTO jugadores VALUES ('Alex Fernandez', 'Cadiz', 'España','8','2');
INSERT INTO jugadores VALUES ('Jairo', 'Cadiz', 'España','11','1');
INSERT INTO jugadores VALUES ('Salvi', 'Cadiz', 'España','7','1');
INSERT INTO jugadores VALUES ('Carmona', 'Cadiz', 'España','14','0');
INSERT INTO jugadores VALUES ('Matos', 'Cadiz', 'España','16','0');
INSERT INTO jugadores VALUES ('Mauro', 'Cadiz', 'Argentina','15','0');
INSERT INTO jugadores VALUES ('Dani Romera', 'Cadiz', 'España','9','2');
INSERT INTO jugadores VALUES ('Sergio Sanchez', 'Cadiz', 'España','20','0');
INSERT INTO jugadores VALUES ('Mario Barco', 'Cadiz', 'España','19','0');

