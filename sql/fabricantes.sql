-- Tabela de Fabricantes de Produtos
CREATE TABLE Fabricantes (
    FabricanteID INT PRIMARY KEY AUTO_INCREMENT,
    NomeFabricante VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(20) UNIQUE NOT NULL,
    EnderecoFabricante VARCHAR(255),
    EmailFabricante VARCHAR(255) UNIQUE NOT NULL,
    Telefone VARCHAR(20),
    SiteFabricante VARCHAR(255),
    Observacoes TEXT
);