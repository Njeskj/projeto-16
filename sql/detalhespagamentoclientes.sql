-- Tabela de Detalhes de Pagamento de Clientes
CREATE TABLE DetalhesPagamentoClientes (
    DetalhePagamentoClienteID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorPago DECIMAL(10, 2) NOT NULL,
    Metodo ENUM('Cartão de Crédito', 'Cartão de Débito', 'Transferência Bancária', 'PayPal', 'Outro') NOT NULL,
    Status ENUM('Aguardando Pagamento', 'Pago', 'Atrasado', 'Cancelado', 'Parcial') DEFAULT 'Aguardando Pagamento',
    NumeroPedido INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);