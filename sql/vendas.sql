-- Tabela de Vendas
CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionarioID INT NOT NULL,
    DataVenda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);