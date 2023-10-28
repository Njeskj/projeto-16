-- Tabela de Entregas
CREATE TABLE Entregas (
    EntregaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    TransportadoraID INT NOT NULL,
    MetodoEntrega VARCHAR(100) NOT NULL,
    CodigoRastreamento VARCHAR(255),
    DataEnvio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataEntregaPrevista DATE,
    DataEntregaRealizada DATE,
    EnderecoEntrega VARCHAR(255) NOT NULL,
    Status ENUM('Aguardando Envio', 'Em Trânsito', 'Entregue', 'Cancelada', 'Devolvida') DEFAULT 'Aguardando Envio',
    Observacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (TransportadoraID) REFERENCES Transportadoras(TransportadoraID)
);