-- Tabela de Transações Financeiras
CREATE TABLE TransacoesFinanceiras (
    TransacaoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    TipoTransacao ENUM('Pagamento', 'Reembolso', 'Taxa', 'Outro') NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    DataTransacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DetalhesTransacao TEXT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);