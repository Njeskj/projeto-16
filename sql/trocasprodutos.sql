-- Tabela de Trocas de Produtos
CREATE TABLE TrocasProdutos (
    TrocaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataTroca TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Motivo TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);