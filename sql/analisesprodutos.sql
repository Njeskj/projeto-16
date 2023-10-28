-- Tabela de Análises de Produtos
CREATE TABLE AnalisesProdutos (
    AnaliseID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    DataAnalise TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Pontuacao INT NOT NULL CHECK (Pontuacao >= 1 AND Pontuacao <= 5),
    Comentario TEXT,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);