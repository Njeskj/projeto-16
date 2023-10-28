-- Tabela de Campanhas de Marketing
CREATE TABLE CampanhasMarketing (
    CampanhaID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCampanha VARCHAR(255) NOT NULL,
    DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,
    Orçamento DECIMAL(10, 2) NOT NULL,
    Descrição TEXT,
    Status ENUM('Ativa', 'Pausada', 'Concluída') DEFAULT 'Ativa'
);