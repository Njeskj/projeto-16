-- Tabela de Informações de Funcionários
CREATE TABLE InformacoesFuncionarios (
    InformacoesFuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionarioID INT NOT NULL,
    DataNascimento DATE,
    CPF VARCHAR(20) UNIQUE,
    RG VARCHAR(20) UNIQUE,
    EnderecoResidencial VARCHAR(255),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);