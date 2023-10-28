-- Tabela de Histórico de Acesso de Funcionários
CREATE TABLE HistoricoAcessoFuncionarios (
    HistoricoAcessoID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionarioID INT NOT NULL,
    DataAcesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Acao VARCHAR(255) NOT NULL,
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);