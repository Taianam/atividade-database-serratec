CREATE TABLE public.produto
(
    codigo character varying(5) NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text,
    valor double precision,
    categoria character varying(30) NOT NULL,
    CONSTRAINT produto_codigo_pkey PRIMARY KEY (codigo)
);


ALTER TABLE public.produto OWNER to postgres;



INSERT INTO produto (codigo, nome, valor, categoria)
 VALUES 
   ('AF56V', 'Geladeira Brastemp', 2220.90, 'Eletro'),
   ('H5G56', 'Fogão Electrolux', 1605.20, 'Eletro'),
   ('J5G58', 'Cama Queen Size Ortobom', 1800.07, 'Casa e Jardim'),
   ('U7445', 'Playstation 5', 7800.03, 'Entretenimento'),
   ('T9HJu', 'Playstation 5', 2800.03, 'Entretenimento');

 ALTER TABLE produto  add COLUMN valor_desconto integer
 
 ALTER TABLE produto  AS COLUMN valor_total integer
 
SELECT

produto.nome,
produto.valor,
(valor * 0.15) AS valor_desconto, 
(valor - valor * 0.15) AS valor_total  
FROM produto

