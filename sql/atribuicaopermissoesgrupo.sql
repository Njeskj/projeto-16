-- Tabela de Atribuição de Permissões a Grupos
CREATE TABLE AtribuicaoPermissoesGrupo (
    AtribuicaoPermissaoGrupoID INT PRIMARY KEY AUTO_INCREMENT,
    GrupoID INT NOT NULL,
    PermissaoID INT NOT NULL,
    FOREIGN KEY (GrupoID) REFERENCES GruposUsuarios(GrupoID),
    FOREIGN KEY (PermissaoID) REFERENCES Permissoes(PermissaoID)
);