-- Tabela de Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY AUTO_INCREMENT,
    FornecedorID INT NOT NULL,
    DataCompra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Aguardando Pagamento', 'Pago', 'Cancelado') DEFAULT 'Aguardando Pagamento',
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);