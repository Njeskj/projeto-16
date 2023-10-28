-- Tabela de Feedback dos Clientes
CREATE TABLE FeedbackClientes (
    FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    PedidoID INT NOT NULL,
    DataFeedback TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Avaliacao INT NOT NULL CHECK (Avaliacao >= 1 AND Avaliacao <= 5),
    Comentario TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);