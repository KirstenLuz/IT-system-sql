-- Inserindo usuários
INSERT INTO users (name, username, password)
VALUES
('Maria Souza', 'maria_souza', 'senha123'),
('João Oliveira', 'joao_oliveira', 'senha321'),
('Ana Lima', 'ana_lima', 'abc123'),
('Carlos Mendes', 'carlos_mendes', 'senhaSegura!'),
('Fernanda Silva', 'fernanda_silva', 'passw0rd'),
('Rafael Costa', 'rafael_costa', '12345'),
('Juliana Ramos', 'juliana_ramos', 'senha@2025'),
('Rodrigo Azevedo', 'rodrigo_azevedo', 'az123'),
('Patrícia Rocha', 'patricia_rocha', 'paty987'),
('Gustavo Martins', 'gustavo_martins', 'martins!'),
('Camila Ferreira', 'camila_ferreira', 'cami@321'),
('Marcos Dias', 'marcos_dias', 'dias2025'),
('Aline Barbosa', 'aline_barbosa', 'alineSenha'),
('Eduardo Santos', 'edu_santos', 'ed123'),
('Larissa Almeida', 'larissa_almeida', 'lal123'),
('Tiago Correia', 'tiago_correia', 'tcor!'),
('Helena Teixeira', 'helena_teixeira', 'helena@'),
('Lucas Vieira', 'lucas_vieira', 'vieira1'),
('Natália Pinto', 'natalia_pinto', 'npinto'),
('André Gomes', 'andre_gomes', 'andreg'),
('Paula Nunes', 'paula_nunes', 'pnunes'),
('Ricardo Monteiro', 'ricardo_monteiro', 'rm2025'),
('Bruna Tavares', 'bruna_tavares', 'bruna@1'),
('Felipe Cardoso', 'felipe_cardoso', 'felipec'),
('Carolina Souza', 'carolina_souza', 'carol123');

-- Inserindo clientes (10)
INSERT INTO clients (cnpj, user_id)
VALUES
('12.345.678/0001-99', 1),
('98.765.432/0001-11', 2),
('56.789.123/0001-55', 6),
('34.567.890/0001-22', 7),
('76.543.210/0001-44', 9),
('45.678.912/0001-66', 10),
('32.109.876/0001-33', 12),
('67.890.123/0001-88', 15),
('87.654.321/0001-77', 18),
('90.123.456/0001-00', 20);

-- Inserindo técnicos (5)
INSERT INTO technicians (user_id)
VALUES
(3),
(4),
(5),
(8),
(11);

-- Inserindo tickets (20)
INSERT INTO tickets (description, category, status, client_id, technician_id)
VALUES
('Computador não liga após atualização do Windows.', 'hardware', 'in_progress', 1, 1),
('Erro ao instalar pacote do Office 365.', 'installation', 'open', 2, NULL),
('Impressora não imprime via rede.', 'printer', 'queued', 3, 2),
('Internet intermitente em todos os setores.', 'network', 'in_progress', 4, 3),
('Atualização de antivírus corporativo.', 'others', 'closed', 5, 4),
('Mouse parou de funcionar subitamente.', 'hardware', 'open', 6, NULL),
('Usuário não consegue abrir planilha Excel.', 'office', 'in_progress', 7, 5),
('Queda de conexão VPN remota.', 'network', 'queued', 8, 2),
('Falha na configuração de impressora Wi-Fi.', 'printer', 'open', 9, NULL),
('Erro desconhecido no Outlook.', 'office', 'in_progress', 10, 1),
('Solicitação de instalação de novo software de design.', 'installation', 'queued', 1, 3),
('PC superaquecendo frequentemente.', 'hardware', 'in_progress', 2, 4),
('Solicitação de aumento de memória RAM.', 'hardware', 'open', 3, NULL),
('Erro ao abrir documentos Word.', 'office', 'in_progress', 4, 1),
('Problemas no roteador principal.', 'network', 'queued', 5, 5),
('Impressora imprime páginas em branco.', 'printer', 'in_progress', 6, 2),
('Atualização de sistema operacional solicitada.', 'installation', 'closed', 7, 4),
('Falha no servidor de arquivos.', 'network', 'in_progress', 8, 3),
('Solicitação de novo usuário no domínio.', 'others', 'open', 9, NULL),
('Monitor piscando constantemente.', 'hardware', 'queued', 10, 5);

-- Inserindo mensagens (40)
INSERT INTO messages (content, ticket_id, sender_id)
VALUES
('Já verifiquei o cabo de energia, mas o PC não liga.', 1, 1),
('Estou indo verificar o hardware localmente.', 1, 3),
('Erro persiste mesmo após reinstalar o Office.', 2, 2),
('Posso agendar suporte remoto amanhã.', 2, 4),
('Impressora não aparece no painel de dispositivos.', 3, 6),
('Ok, vou verificar as permissões de rede.', 3, 4),
('Internet caiu novamente.', 4, 7),
('Investigando o roteador do setor administrativo.', 4, 5),
('Antivírus atualizado com sucesso.', 5, 9),
('Ticket encerrado com sucesso.', 5, 8),
('Mouse testado em outro PC, também não funciona.', 6, 10),
('Verifique se há energia na porta USB.', 6, 4),
('Planilha travando ao abrir.', 7, 12),
('Reinstalei o Excel, problema persiste.', 7, 11),
('VPN desconectando a cada 10 minutos.', 8, 15),
('Monitorando logs do firewall.', 8, 8),
('Impressora nova adicionada, mas não imprime.', 9, 18),
('Pode ser driver incorreto, verei isso.', 9, 5),
('Outlook demora para abrir e sincronizar.', 10, 20),
('Analisando o arquivo PST.', 10, 3),
('Solicitação de software de design aprovada.', 11, 1),
('Instalando ferramenta CorelDRAW.', 11, 4),
('PC desligando sozinho.', 12, 2),
('Verificando superaquecimento da CPU.', 12, 5),
('Cliente solicita upgrade de memória RAM.', 13, 6),
('Peças já encomendadas.', 13, 3),
('Erro de compatibilidade no Word.', 14, 7),
('Reinstalando pacote Office.', 14, 11),
('Rede oscilando constantemente.', 15, 9),
('Reconfigurando roteador principal.', 15, 5),
('Impressora imprime páginas em branco.', 16, 10),
('Substituição do cartucho feita.', 16, 8),
('Atualização de sistema finalizada.', 17, 12),
('Tudo funcionando normalmente.', 17, 4),
('Servidor de arquivos inacessível.', 18, 15),
('Backup iniciado para restauração.', 18, 3),
('Solicitando novo usuário no domínio.', 19, 18),
('Usuário criado com sucesso.', 19, 5),
('Monitor piscando desde ontem.', 20, 20),
('Analisando possível falha no cabo HDMI.', 20, 11);