-- Tabela de Itens da Compra
CREATE TABLE ItensCompra (
    ItemCompraID INT PRIMARY KEY AUTO_INCREMENT,
    CompraID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CompraID) REFERENCES Compras(CompraID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);