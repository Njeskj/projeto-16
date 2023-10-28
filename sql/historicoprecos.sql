-- Tabela de Histórico de Preços de Produtos
CREATE TABLE HistoricoPrecos (
    HistoricoID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    PrecoAntigo DECIMAL(10, 2) NOT NULL,
    NovoPreco DECIMAL(10, 2) NOT NULL,
    DataAlteracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);