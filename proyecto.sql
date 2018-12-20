CREATE TYPE direccion AS
(   Nombre_Via text,
    Provincia text,
    Poblacion text,
    CP       integer,
    Tipo_Via   text
);

CREATE TABLE JefeProyecto(
    Cod_JefeProyecto integer,
    Nombre text,
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
    Nombre text,
    PRIMARY KEY (Cod_Proyecto)
);



CREATE TABLE Plano(
    Cod_Plano  integer,
    Fecha_Entrega Date,
    Arquitectos text[],
    Dibujo_Plano integer,
    Num_Figuras integer,
    PRIMARY KEY (Cod_Plano)
);



CREATE TYPE puntos AS
(
    Coord_X       integer,
    Coord_Y       integer
);

CREATE TABLE Linea(
    Id_linea integer,
    Longitud integer,
    Puntos puntos[],
    PRIMARY KEY (Id_linea)
);







