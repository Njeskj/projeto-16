-- Tabela de Detalhes de Expedição de Produtos
CREATE TABLE DetalhesExpedicao (
    DetalheExpedicaoID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataExpedicao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TransportadoraID INT NOT NULL,
    Status ENUM('Em Processamento', 'Enviado', 'Entregue', 'Atrasado', 'Cancelado') DEFAULT 'Em Processamento',
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (TransportadoraID) REFERENCES Transportadoras(TransportadoraID)
);