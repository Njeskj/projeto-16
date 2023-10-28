-- Tabela de Detalhes de Entrega
CREATE TABLE DetalhesEntrega (
    DetalheEntregaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    MetodoEntrega VARCHAR(100) NOT NULL,
    CodigoRastreamento VARCHAR(255),
    DataEntregaPrevista DATE,
    DataEntregaRealizada DATE,
    EnderecoEntrega VARCHAR(255) NOT NULL,
    Status ENUM('Aguardando Entrega', 'Em Trânsito', 'Entregue', 'Cancelada', 'Devolvida') DEFAULT 'Aguardando Entrega',
    Observacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);