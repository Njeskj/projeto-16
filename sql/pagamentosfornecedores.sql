-- Tabela de Pagamentos de Fornecedores
CREATE TABLE PagamentosFornecedores (
    PagamentoFornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    FornecedorID INT NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorPago DECIMAL(10, 2) NOT NULL,
    Metodo ENUM('Transferência Bancária', 'Cheque', 'PayPal', 'Outro') NOT NULL,
    Status ENUM('Aguardando Pagamento', 'Pago', 'Atrasado', 'Cancelado') DEFAULT 'Aguardando Pagamento',
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);