-- Tabela de Inventário
CREATE TABLE Inventario (
    InventarioID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataAtualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    LOCALIZACAO VARCHAR(255),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);