-- Tabela de Reembolsos de Clientes
CREATE TABLE ReembolsosClientes (
    ReembolsoClienteID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    PedidoID INT NOT NULL,
    ValorReembolso DECIMAL(10, 2) NOT NULL,
    DataReembolso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Motivo TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);