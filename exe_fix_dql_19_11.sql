USE revisao;



 

-- 1. Selecione todos os jogos disponíveis no banco de dados.
select * from jogos;
-- 2. Liste os nomes e telefones de todos os clientes cadastrados.
select nome as Nome, telefone as contato from clientes;
-- 3. Encontre todos os jogos lançados após o ano de 2020.
select titulo as Nome, ano_lancamento as DataJogo from jogos where ano_lancamento > '2020' order by DataJogo;
-- 4. Liste todos os clientes que moram na cidade de 'Vila Velha'.
select c.nome as Nome, e.cidade as Cidade
from clientes as C
join enderecos as e on C.endereco_id = e.endereco_id
where e.cidade = 'Vila Velha';
-- 5. Obtenha todas as locações feitas no último mês ou semana (considerando a data atual).
SELECT * 
FROM locacoes
WHERE data_locacao = date_sub(CURDATE(), INTERVAL 1 week); 
-- 6. Liste os jogos disponíveis em ordem crescente de preço da diária.
select titulo as Nome_do_Jogo, preco_diaria
from jogos 
order by preco_diaria ;
-- 7. Mostre os 5 clientes mais recentes cadastrados, ordenados pela data de nascimento.
select * from clientes
order by data_nascimento desc
limit 5;
-- 8. Calcule a quantidade de locações feitas por cada cliente.

-- 9. Encontre os jogos mais alugados (com pelo menos 5 locações).

-- 10. Liste os métodos de pagamento e a soma total de valores pagos para cada método.

-- 11. Recupere os detalhes das locações, incluindo o nome do cliente e o título do jogo.

-- 12. Liste os endereços de todos os clientes, com seus respectivos nomes.

-- 13. Mostre todas as locações em que o status é 'Atrasada', incluindo os dados do cliente e o jogo alugado.

-- 14. Calcule o valor médio das diárias dos jogos.

-- 15. Determine o valor total arrecadado em pagamentos.

-- 16. Encontre o jogo mais caro no banco de dados.

-- 17. Liste os 3 jogos mais baratos disponíveis para locação.

-- 18. Mostre as 10 locações mais recentes, incluindo a data de locação e o status.

-- 19. Identifique os clientes que fizeram mais de 3 locações.

-- 20. Liste os jogos com preço médio diário acima de R$5 e que possuem mais de 2 locações.