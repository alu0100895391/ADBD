CREATE TYPE direccion AS
(   Nombre_Via VARCHAR(50),
    Provincia VARCHAR(50),
    Poblacion VARCHAR(50),
    CP       INT,
    Tipo_Via   VARCHAR(50)
);

CREATE TABLE JefeProyecto(
    Cod_JefeProyecto integer,
    Nombre VARCHAR(100),
    Direccion direccion,
    Telefono integer,
    PRIMARY KEY (Cod_JefeProyecto),
    UNIQUE(Nombre)/*AK*/
);


CREATE TABLE Figura (
    Figura_Id integer,
    Nombre text,
    Color text,
    PRIMARY KEY (Figura_Id),
    UNIQUE (Color) /*AK*/
);


CREATE TABLE Poligono(
    Num_lineas integer
);


CREATE TABLE Proyecto(
    Cod_Proyecto integer,
    Nombre VARCHAR(50),
    PRIMARY KEY (Cod_Proyecto)
);



CREATE TABLE Plano(
    Cod_Plano  integer,
    Fecha_Entrega Date,
    Arquitectos text[],
    Dibujo_Plano boolean,
    Num_Figuras integer,
    PRIMARY KEY (Cod_Plano)
);



CREATE TYPE puntos AS
(
    Coord_X       INT,
    Coord_Y       INT
);

CREATE TABLE Linea(
    Id_linea integer,
    Longitud integer,
    Puntos puntos[],
    PRIMARY KEY (Id_linea)
);






/*cuales son aquellas cosas con las que me identifico, crear uno se que
identificar una comunidad de practicas
a largo plazp esto seguirá vido y que elementos ayudará  que essto no se que*/
