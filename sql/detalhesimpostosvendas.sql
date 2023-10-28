-- Tabela de Detalhes de Impostos sobre Vendas
CREATE TABLE DetalhesImpostosVendas (
    ImpostoVendasID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ValorImposto DECIMAL(10, 2) NOT NULL,
    DataPagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);