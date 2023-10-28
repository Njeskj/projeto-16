-- Tabela de Mensagens de Suporte
CREATE TABLE MensagensSuporte (
    MensagemID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    FuncionarioID INT NOT NULL,
    DataMensagem TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Assunto VARCHAR(255) NOT NULL,
    Mensagem TEXT,
    Status ENUM('Aberta', 'Em Andamento', 'Fechada') DEFAULT 'Aberta',
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);