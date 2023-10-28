-- Tabela de Atribuição de Usuários a Grupos
CREATE TABLE AtribuicaoGrupos (
    AtribuicaoGrupoID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT NOT NULL,
    GrupoID INT NOT NULL,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (GrupoID) REFERENCES GruposUsuarios(GrupoID)
);