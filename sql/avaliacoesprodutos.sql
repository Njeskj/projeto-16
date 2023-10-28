-- Tabela de Avaliações de Produtos
CREATE TABLE AvaliacoesProdutos (
    AvaliacaoID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    ClienteID INT NOT NULL,
    DataAvaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Pontuacao INT NOT NULL CHECK (Pontuacao >= 1 AND Pontuacao <= 5),
    Comentario TEXT,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);