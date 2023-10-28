-- Tabela de Devoluções de Clientes
CREATE TABLE DevolucoesClientes (
    DevolucaoClienteID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataDevolucao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Motivo TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);