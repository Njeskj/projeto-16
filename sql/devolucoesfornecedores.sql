-- Tabela de Devoluções de Fornecedores
CREATE TABLE DevolucoesFornecedores (
    DevolucaoFornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    FornecedorID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataDevolucao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Motivo TEXT,
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);