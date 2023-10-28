-- Tabela de Detalhes de Pagamentos a Fornecedores (Aprimorada)
CREATE TABLE DetalhesPagamentosFornecedores (
    DetalhePagamentoFornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    FornecedorID INT NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorPago DECIMAL(10, 2) NOT NULL,
    Metodo ENUM('Transferência Bancária', 'Cheque', 'PayPal', 'Outro') NOT NULL,
    Status ENUM('Aguardando Pagamento', 'Pago', 'Atrasado', 'Cancelado', 'Parcial') DEFAULT 'Aguardando Pagamento',
    NumeroFatura VARCHAR(255),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);