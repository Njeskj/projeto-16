-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    CategoriaID INT,
    FOREIGN KEY (CategoriaID) REFERENCES CategoriasProdutos(CategoriaID)
);