-- Tabela de Armazenamento de Produtos
CREATE TABLE ArmazenamentoProdutos (
    ArmazenamentoID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    QuantidadeEmEstoque INT NOT NULL,
    DataAtualizacaoEstoque TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LocalizacaoEstoque VARCHAR(255),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);