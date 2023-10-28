-- Tabela de Detalhes de Entregas de Pedidos
CREATE TABLE DetalhesEntregas (
    DetalheEntregaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    DataEntrega TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    NomeRecebedor VARCHAR(255) NOT NULL,
    AssinaturaEntrega BLOB, -- Pode armazenar a assinatura eletrônica
    Status ENUM('Em Rota', 'Entregue', 'Atrasado', 'Cancelado') DEFAULT 'Em Rota',
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);