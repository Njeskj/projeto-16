-- Tabela de Promoções de Produtos
CREATE TABLE PromocoesProdutos (
    PromocaoProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    NomePromocao VARCHAR(255) NOT NULL,
    Desconto DECIMAL(5, 2) NOT NULL,
    DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,
    Ativa BOOLEAN DEFAULT true,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);