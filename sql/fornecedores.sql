-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    NomeFornecedor VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(20) UNIQUE NOT NULL,
    EnderecoFornecedor VARCHAR(255),
    EmailFornecedor VARCHAR(255) UNIQUE NOT NULL
);