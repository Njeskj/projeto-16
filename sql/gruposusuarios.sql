-- Tabela de Grupos de Usuários
CREATE TABLE GruposUsuarios (
    GrupoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeGrupo VARCHAR(255) NOT NULL,
    DescricaoGrupo TEXT
);