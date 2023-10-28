-- Tabela de Auditoria Avançada (Aprimorada)
CREATE TABLE AuditoriaAvancadaAprimorada (
    AuditoriaID INT PRIMARY KEY AUTO_INCREMENT,
    TabelaAcessada VARCHAR(255) NOT NULL,
    AcaoRealizada ENUM('Inserção', 'Atualização', 'Exclusão') NOT NULL,
    RegistroID INT NOT NULL,
    DataAcao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UsuarioID INT NOT NULL,
    DetalhesAcao JSON,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);