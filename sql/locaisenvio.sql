-- Tabela de Locais de Envio
CREATE TABLE LocaisEnvio (
    LocalEnvioID INT PRIMARY KEY AUTO_INCREMENT,
    NomeLocal VARCHAR(255) NOT NULL,
    EnderecoLocal VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    Estado CHAR(2) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    País VARCHAR(50) NOT NULL
);