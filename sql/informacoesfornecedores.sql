-- Tabela de Informações de Fornecedores (Aprimorada)
CREATE TABLE InformacoesFornecedores (
    FornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    NomeFornecedor VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(20) UNIQUE NOT NULL,
    EnderecoFornecedor VARCHAR(255),
    EmailFornecedor VARCHAR(255) UNIQUE NOT NULL,
    Telefone VARCHAR(20),
    SiteFornecedor VARCHAR(255),
    Observacoes TEXT,
    AvaliacaoMedia DECIMAL(3, 2) DEFAULT 0.00,
    NumeroPedidos INT DEFAULT 0,
    ClassificacaoFornecedor ENUM('Excelente', 'Bom', 'Regular', 'Ruim') DEFAULT 'Regular'
);