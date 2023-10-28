-- Tabela de Histórico de Promoções (Aprimorada)
CREATE TABLE HistoricoPromocoesAprimorado (
    HistoricoPromocaoID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    PromocaoID INT NOT NULL,
    DataAplicacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DescontoAdicional DECIMAL(5, 2) NOT NULL,
    DataInicio DATE,
    DataFim DATE,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (PromocaoID) REFERENCES Promocoes(PromocaoID)
);