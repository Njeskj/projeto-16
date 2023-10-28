-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Cargo VARCHAR(100) NOT NULL,
    DataContratacao DATE,
    Salario DECIMAL(10, 2),
    SupervisorID INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (SupervisorID) REFERENCES Funcionarios(FuncionarioID)
);