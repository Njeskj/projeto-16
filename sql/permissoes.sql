-- Tabela de Permissões
CREATE TABLE Permissoes (
    PermissaoID INT PRIMARY KEY AUTO_INCREMENT,
    FuncionalidadeID INT NOT NULL,
    PapelUsuario ENUM('Admin', 'Funcionario', 'Cliente') NOT NULL,
    AcessoPermitido ENUM('Ler', 'Escrever', 'Administrar') NOT NULL,
    FOREIGN KEY (FuncionalidadeID) REFERENCES Funcionalidades(FuncionalidadeID)
);