-- Tabela de Estoque (Aprimorada)
CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    QuantidadeEmEstoque INT NOT NULL,
    QuantidadeMinima INT NOT NULL,
    DataAtualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LocalizacaoEstoque VARCHAR(255),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);