-- Tabela de Transportadoras
CREATE TABLE Transportadoras (
    TransportadoraID INT PRIMARY KEY AUTO_INCREMENT,
    NomeTransportadora VARCHAR(255) NOT NULL,
    CNPJTransportadora VARCHAR(20) UNIQUE NOT NULL,
    TelefoneTransportadora VARCHAR(20),
    EmailTransportadora VARCHAR(255) UNIQUE NOT NULL,
    EnderecoTransportadora VARCHAR(255)
);