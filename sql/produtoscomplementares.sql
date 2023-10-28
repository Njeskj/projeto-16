-- Tabela de Produtos Complementares
CREATE TABLE ProdutosComplementares (
    ProdutoComplementarID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    ProdutoRelacionadoID INT NOT NULL,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (ProdutoRelacionadoID) REFERENCES Produtos(ProdutoID)
);