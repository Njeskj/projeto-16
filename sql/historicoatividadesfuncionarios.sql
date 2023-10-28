-- Tabela de Histórico de Atividades de Funcionários
CREATE TABLE HistoricoAtividadesFuncionarios (
    HistoricoAtividadeID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionarioID INT NOT NULL,
    DataAtividade TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Atividade VARCHAR(255) NOT NULL,
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);