-- Queries auxiliares
SELECT * FROM users;
SELECT * FROM clients;
SELECT * FROM technicians;
SELECT * FROM tickets;
SELECT * FROM messages;
SELECT 
*
FROM tickets t
JOIN clients c ON t.client_id = c.id
JOIN users client_user ON c.user_id = client_user.id
LEFT JOIN technicians tech ON t.technician_id = tech.id
LEFT JOIN users tech_user ON tech.user_id = tech_user.id;

-- 1. Mostrar todos os usuários cadastrados.  
SELECT 
	u.name AS full_name,
	u.username,
	u.password
FROM users u;

-- 2. Exibir apenas os nomes e usernames de todos os usuários.  
SELECT 
	u.name AS full_name,
	u.username
FROM users u;

-- 3. Mostrar todos os clientes com seus respectivos CNPJs. 
SELECT 
	u.name AS client_name,
	c.cnpj AS client_cnpj
FROM clients c
JOIN users u ON u.id = c.user_id;

-- 4. Listar todos os técnicos e suas informações.  
SELECT
	u.name AS technician_name,
	u.username,
	u.password
FROM technicians tech
JOIN users u ON u.id = tech.user_id;

-- 5. Exibir todos os tickets cadastrados, com descrição e status.
SELECT 
	t.id AS ticket_id,
    t.description,
    t.category,
    t.status,
    client_user.name AS client_name,
    tech_user.name AS technician_name
FROM tickets t
JOIN clients c ON t.client_id = c.id
JOIN users client_user ON c.user_id = client_user.id
LEFT JOIN technicians tech ON t.technician_id = tech.id
LEFT JOIN users tech_user ON tech.user_id = tech_user.id;

-- 6. Mostrar apenas os tickets com status “aberto”.  
SELECT
	t.id AS ticket_id,
	t.description,
	t.category
FROM tickets t WHERE status = 'open'

-- 7. Exibir os 5 tickets mais recentes (por data de criação).  
SELECT 
	t.id AS ticket_id,
	t.opened_at,
	t.description,
	t.category
FROM tickets t ORDER BY opened_at DESC LIMIT 5;

-- 8. Mostrar todos os clientes (nome do usuário e CNPJ).  
SELECT
	u.name AS client_name,
	c.cnpj AS client_cnpj
FROM clients c
JOIN users u ON c.user_id = u.id;

-- 9. Exibir todos os técnicos com o nome do usuário.  
SELECT 
	DISTINCT u.name AS technician_name,
	t.category AS handled_category
FROM tickets t
JOIN technicians tech ON t.technician_id = tech.id
JOIN users u ON tech.user_id = u.id;

-- 10. Listar todos os tickets com o nome do cliente que abriu.  
SELECT *
	-- u.name AS client_name,
	-- t.id AS ticket_id,
	-- t.description,
	-- t.category,
	-- t.opened_at
FROM tickets t
JOIN clients c ON t.client_id = c.id
JOIN users u ON c.user_id = u.id;

-- 11. Mostrar todos os tickets com o nome do técnico responsável.  
SELECT 
	u.name AS technician_name,
	t.id AS ticket_id,
	t.description, 
	t.category
FROM tickets t 
JOIN technicians tech ON t.technician_id = tech.id
JOIN users u ON tech.user_id = u.id

-- 12. Exibir tickets e seus clientes, mesmo que ainda não tenham técnico atribuído. 
SELECT 
	t.id AS ticket_id,
    t.description,
    t.category,
    t.status,
    client_user.name AS client_name,
    tech_user.name AS technician_name
FROM tickets t
JOIN clients c ON t.client_id = c.id
JOIN users client_user ON c.user_id = client_user.id
LEFT JOIN technicians tech ON t.technician_id = tech.id
LEFT JOIN users tech_user ON tech.user_id = tech_user.id;

-- 13. Mostrar todos os tickets da categoria “hardware”.  
SELECT 
	t.id AS ticket_id,
	u.name AS technician_name,
    t.description,
    t.category,
    t.status
FROM tickets t
JOIN technicians tech ON t.technician_id = tech.id
JOIN users u ON tech.user_id = u.id
WHERE t.category = 'hardware'

-- 14. Contar quantos tickets estão abertos atualmente.  
SELECT 
	COUNT (id) AS open_tickets 
FROM tickets WHERE status = 'open'

-- 15. Mostrar os nomes de todos os clientes ordenados alfabeticamente.
SELECT 
	u.id AS client_id,
	u.name AS client_name
FROM clients c
JOIN users u ON c.user_id = u.id
ORDER BY u.name ASC;