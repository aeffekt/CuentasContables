CREATE TABLE Cuentas (
    id INT IDENTITY(1,1) PRIMARY KEY,
    descripcion VARCHAR(50)
);

-- Crear tabla RegistrosContables
CREATE TABLE RegistrosContables (
    id INT IDENTITY(1,1) PRIMARY KEY,
    idCuenta INT,
    monto INT,
    tipo BIT,
    FOREIGN KEY (idCuenta) REFERENCES Cuentas(id)
);