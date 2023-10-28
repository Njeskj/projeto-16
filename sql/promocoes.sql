-- Tabela de Promoções
CREATE TABLE Promocoes (
    PromocaoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT,
    DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,
    Desconto DECIMAL(5, 2) NOT NULL
);