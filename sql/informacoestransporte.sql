-- Tabela de Informações de Transporte
CREATE TABLE InformacoesTransporte (
    TransporteID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    MetodoEntrega VARCHAR(100) NOT NULL,
    CodigoRastreamento VARCHAR(255),
    DataEnvio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataEntregaPrevista DATE,
    Status ENUM('Aguardando Envio', 'Em Trânsito', 'Entregue', 'Cancelado', 'Devolvido') DEFAULT 'Aguardando Envio',
    Observacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);