-- Tabela de Compras de Clientes
CREATE TABLE ComprasClientes (
    CompraClienteID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataCompra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);