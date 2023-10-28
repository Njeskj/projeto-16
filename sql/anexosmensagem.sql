-- Tabela de Anexos de Mensagens de Suporte
CREATE TABLE AnexosMensagem (
    AnexoID INT PRIMARY KEY AUTO_INCREMENT,
    MensagemID INT NOT NULL,
    NomeArquivo VARCHAR(255) NOT NULL,
    TipoArquivo VARCHAR(100) NOT NULL,
    CaminhoArquivo VARCHAR(255) NOT NULL,
    FOREIGN KEY (MensagemID) REFERENCES MensagensSuporte(MensagemID)
);