CREATE DATABASE peliculas;
\c peliculas
CREATE TABLE pelicula(id INT, pelicula VARCHAR(100), año_estreno int, director VARCHAR(100), PRIMARY KEY(ID));
CREATE TABLE reparto(reparto INT, nombre VARCHAR(100), FOREIGN KEY (reparto) REFERENCES pelicula(id));
\COPY pelicula FROM 'peliculas.csv' csv header;
\COPY reparto FROM 'reparto.csv' csv header;
SELECT id FROM pelicula WHERE pelicula='Titanic';
SELECT nombre AS reparto_Titanic FROM reparto WHERE reparto=2;
SELECT COUNT (nombre) AS pelicula_participa_Harrison FROM reparto WHERE nombre='Harrison Ford';
SELECT pelicula AS peliculas_entre_1990_y_1999 FROM pelicula WHERE año_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;
SELECT pelicula, LENGTH(pelicula) AS longitud_pelicula  FROM pelicula GROUP BY pelicula;
SELECT MAX(LENGTH(pelicula)) AS titulo_mas_largo FROM pelicula;