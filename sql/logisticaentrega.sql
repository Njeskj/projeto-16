-- Tabela de Logística de Entrega
CREATE TABLE LogisticaEntrega (
    LogisticaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    TransportadoraID INT NOT NULL,
    DataSaida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataChegadaPrevista DATE,
    Status ENUM('Aguardando Retirada', 'Em Trânsito', 'Entregue', 'Atrasado', 'Cancelado') DEFAULT 'Aguardando Retirada',
    Observacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (TransportadoraID) REFERENCES Transportadoras(TransportadoraID)
);