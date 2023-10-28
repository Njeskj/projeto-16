-- Tabela de Avaliações
CREATE TABLE Avaliacoes (
    AvaliacaoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    Nota INT NOT NULL CHECK (Nota >= 1 AND Nota <= 5),
    Comentario TEXT,
    DataAvaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);