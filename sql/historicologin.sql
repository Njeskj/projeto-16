-- Tabela de Histórico de Login de Usuários
CREATE TABLE HistoricoLoginUsuarios (
    HistoricoLoginID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT NOT NULL,
    DataLogin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    EnderecoIP VARCHAR(45),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);