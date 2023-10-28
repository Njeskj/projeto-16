-- Tabela de Itens do Carrinho
CREATE TABLE ItensCarrinho (
    ItemCarrinhoID INT PRIMARY KEY AUTO_INCREMENT,
    CarrinhoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY (CarrinhoID) REFERENCES Carrinhos(CarrinhoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);