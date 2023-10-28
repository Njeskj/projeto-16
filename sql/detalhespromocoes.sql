-- Tabela de Detalhes de Promoções
CREATE TABLE DetalhesPromocoes (
    DetalhePromocaoID INT PRIMARY KEY AUTO_INCREMENT,
    PromocaoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    DescontoAdicional DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (PromocaoID) REFERENCES Promocoes(PromocaoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);