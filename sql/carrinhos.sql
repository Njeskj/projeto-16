-- Tabela de Carrinhos de Compras
CREATE TABLE Carrinhos (
    CarrinhoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataCriacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);