-- Tabela de Categorias de Produtos
CREATE TABLE CategoriasProdutos (
    CategoriaID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCategoria VARCHAR(255) NOT NULL,
    DescricaoCategoria TEXT,
    CategoriaPaiID INT, -- Para suportar hierarquia de categorias
    FOREIGN KEY (CategoriaPaiID) REFERENCES CategoriasProdutos(CategoriaID)
);