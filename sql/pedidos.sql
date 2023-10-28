-- Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataPedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataEntregaPrevista DATE,
    Status ENUM('Pendente', 'Em Processamento', 'Enviado', 'Concluído', 'Cancelado') DEFAULT 'Pendente',
    Observacao TEXT,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    Desconto DECIMAL(10, 2) DEFAULT 0.00,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);