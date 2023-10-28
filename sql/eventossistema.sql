-- Tabela de Eventos de Sistema
CREATE TABLE EventosSistema (
    EventoID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT NOT NULL,
    DataEvento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TipoEvento VARCHAR(255) NOT NULL,
    DetalhesEvento TEXT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);