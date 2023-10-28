-- Tabela de Detalhes de Pagamentos de Funcionários
CREATE TABLE DetalhesPagamentosFuncionarios (
    DetalhePagamentoFuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionarioID INT NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorPago DECIMAL(10, 2) NOT NULL,
    MetodoPagamento VARCHAR(255) NOT NULL,
    StatusPagamento ENUM('Pendente', 'Pago', 'Atrasado', 'Cancelado') DEFAULT 'Pendente',
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);