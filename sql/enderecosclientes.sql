-- Tabela de Endereços de Clientes
CREATE TABLE EnderecosClientes (
    EnderecoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    TipoEndereco ENUM('Entrega', 'Cobrança', 'Outro') NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    Estado CHAR(2) NOT NULL,
    País VARCHAR(50) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);