-- Tabela de Registros de Atividades de Clientes
CREATE TABLE RegistrosAtividadesClientes (
    RegistroAtividadeID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataAtividade TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DescricaoAtividade TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);