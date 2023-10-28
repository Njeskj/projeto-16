-- Tabela de Informações de Contato de Clientes
CREATE TABLE InformacoesContatoClientes (
    InformacoesContatoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    TelefoneContato VARCHAR(20),
    EnderecoContato VARCHAR(255),
    EmailContato VARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);