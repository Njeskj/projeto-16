-- Tabela de Itens da Compra de Clientes
CREATE TABLE ItensCompraClientes (
    ItemCompraClienteID INT PRIMARY KEY AUTO_INCREMENT,
    CompraClienteID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CompraClienteID) REFERENCES ComprasClientes(CompraClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);