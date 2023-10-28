-- Tabela de Retornos de Produtos
CREATE TABLE Retornos (
    RetornoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataRetorno TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Motivo TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);