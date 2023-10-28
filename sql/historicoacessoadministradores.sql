-- Tabela de Histórico de Acesso de Administradores
CREATE TABLE HistoricoAcessoAdministradores (
    HistoricoAcessoAdminID INT PRIMARY KEY AUTO_INCREMENT,
    AdminID INT NOT NULL,
    DataAcesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Acao VARCHAR(255) NOT NULL,
    FOREIGN KEY (AdminID) REFERENCES Administradores(AdminID)
);