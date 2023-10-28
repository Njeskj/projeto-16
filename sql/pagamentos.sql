-- Tabela de Pagamentos
CREATE TABLE Pagamentos (
    PagamentoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ValorPago DECIMAL(10, 2) NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Metodo ENUM('Cartão de Crédito', 'Cartão de Débito', 'Boleto', 'Transferência Bancária', 'Outro') NOT NULL,
    Status ENUM('Aguardando Pagamento', 'Pago', 'Cancelado', 'Reembolsado') DEFAULT 'Aguardando Pagamento',
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);