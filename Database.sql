/*CREATE DATABASE minhapizza_db;*/
CREATE TABLE pizza (
	id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL (8, 2) NOT NULL
    );
CREATE TABLE ingrediente (
	id INT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    quantidade INT
);
CREATE TABLE pizza_ingrediente (
	pizza_id INT,
    ingrediente_id INT,
    quantidade INT,
    PRIMARY KEY (pizza_id, ingrediente_id),
    FOREIGN KEY (pizza_id) REFERENCES pizza(id),
    FOREIGN KEY (ingrediente_id) REFERENCES ingrediente(id)
);

INSERT INTO ingrediente (id, nome, quantidade) VALUES
(1, 'Molho de Tomate', 50),
(2, 'Mussarela', 50),
(3, 'Catupiry', 50),
(4, 'Parmesão', 50),
(5, 'Provolone', 50),
(6, 'Azeitona Preta', 50),
(7, 'Cebola', 50),
(8, 'Tomate', 50),
(9, 'Calabresa', 50),
(10, 'Frango', 50),
(11, 'Pepperoni', 50),
(12, 'Manjericao', 50),
(13, 'Oregano', 50);
INSERT INTO pizza (id, nome, descricao, preco) VALUES
(1, 'Pizza Calabresa', 'Ingredientes: Molho de tomate, Mussarela, Cebola, Calabresa, Oregano', 20),
(2, 'Pizza Frango com Catupiry', 'Ingredientes: Molho de tomate, Mussarela, Catupiry, Frango', 20),
(3, 'Pizza Margherita', 'Ingredientes: Molho de tomate, Mussarela, Tomate, Manjericao', 20),
(4, 'Pizza Mussarela', 'Ingredientes: Molho de tomate, Mussarela, Azeitona Preta, Oregano', 20),
(5, 'Pizza Pepperoni', 'Ingredientes: Molho de tomate, Mussarela, Catupiry, Pepperoni', 20),
(6, 'Pizza Portuguesa', 'Ingredientes: Molho de tomate, Mussarela, Catupiry, Azeitona Preta, Cebola, Tomate, Calabresa, Frango, Pepperoni, Oregano', 20),
(7, 'Pizza Quatro Queijos', 'Ingredientes: Molho de tomate, Mussarela, Catupiry, Parmesão, Provolone, Manjericao', 20)
;
INSERT INTO pizza_ingrediente (pizza_id, ingrediente_id, quantidade) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 7, 2),
(1, 9, 2),
(1, 13, 2),
(2, 1, 2),
(2, 2, 2),
(2, 3, 2),
(2, 10, 2),
(3, 1, 2),
(3, 2, 2),
(3, 8, 2),
(3, 12, 2),
(4, 1, 2),
(4, 2, 2),
(4, 6, 2),
(4, 13, 2),
(5, 1, 2),
(5, 2, 2),
(5, 3, 2),
(5, 11, 2),
(6, 1, 2),
(6, 2, 2),
(6, 3, 2),
(6, 6, 2),
(6, 7, 2),
(6, 8, 2),
(6, 9, 2),
(6, 10, 2),
(6, 11, 2),
(6, 13, 2),
(7, 1, 2),
(7, 2, 2),
(7, 3, 2),
(7, 4, 2),
(7, 5, 2),
(7, 12, 2)
;
SELECT * FROM pizza;
SELECT * FROM ingrediente;
SELECT * FROM pizza_ingrediente;

SELECT n.nome AS ingrediente_nome, qtt.quantidade
FROM pizza_ingrediente qtt
JOIN ingrediente n ON qtt.ingrediente_id = n.id
WHERE qtt.pizza_id = 1;

SELECT pizza_id, p.nome AS pizza_nome, n.nome AS ingrediente_nome, pi.quantidade
FROM pizza_ingrediente pi
JOIN ingrediente n ON pi.ingrediente_id = n.id
JOIN pizza p ON pi.pizza_id = p.id