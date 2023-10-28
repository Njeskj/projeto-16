-- Tabela de Transporte de Pedidos
CREATE TABLE TransportePedidos (
    TransportePedidoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    TransportadoraID INT NOT NULL,
    DataSaida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataEntregaPrevista DATE,
    DataEntregaRealizada DATE,
    Status ENUM('Aguardando Retirada', 'Em Trânsito', 'Entregue', 'Atrasado', 'Cancelado') DEFAULT 'Aguardando Retirada',
    Observacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (TransportadoraID) REFERENCES Transportadoras(TransportadoraID)
);