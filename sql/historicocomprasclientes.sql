-- Tabela de Histórico de Compras de Clientes
CREATE TABLE HistoricoComprasClientes (
    HistoricoCompraID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataCompra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    Status ENUM('Concluída', 'Cancelada', 'Em Andamento') DEFAULT 'Concluída',
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);