-- Tabela de Detalhes de Campanhas de Marketing
CREATE TABLE DetalhesCampanhasMarketing (
    CampanhaID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Desconto DECIMAL(5, 2) NOT NULL,
    DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,
    PRIMARY KEY (CampanhaID, ProdutoID),
    FOREIGN KEY (CampanhaID) REFERENCES CampanhasMarketing(CampanhaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);