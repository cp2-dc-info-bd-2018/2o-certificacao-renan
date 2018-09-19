use lojas;

INSERT INTO deposito (iddeposito, nome, endereco, cnpj, telefone)
VALUES 
(1, 'Dep�sito GRAND J', 'Rua Bar�o de Vit�ria, 451 - Casa Grande - Diadema, SP', '16.634.525/0001-19', '(11) 3889-1434'),
(2, 'Dep�sito Sanch�z', 'endereco_deposito', '36.018.895/0001-39', '(11) 2598-2855'),
(3, 'Dep�sito Alocation', 'Rua Deocasta Aguilera, 824 - Jardim Medina - Po�, SP', '26.684.545/0024-35', '(11) 3791-0002'),
(4, 'Dep�sito Irmentz', 'Rua Afonso Pena, 714 - Jardim Nova Bel�m -Francisco Morato, SP', '47.445.385/0001-64', '(15) 3920-6839'),
(5, 'Dep�sito Big Space', 'Rua Jair Vitta, 345 - Vila Guarani - Itape - SP ', '93.901.440/0001-09', '(15) 3920-6839');

INSERT INTO distribuidor (iddistribuidor, dataentrega, quantidade, iddeposito)
VALUES 
(1, '20/03/2012', '23', '2'),
(2, '21/03/2012', '13', '4'),
(3, '20/03/2012', '75', '1'),
(4, '20/03/2012', '54', '5'),
(5, '21/03/2012', '42', '2');

INSERT INTO loja (idloja, nome, endereco, cnpj, telefone)
VALUES 
(1, '1', 'Ayla e Rita P�es e Doces Ltda', 'Avenida Elias Miguel Maluf, 821 - Vila Pac�fico - Bauru, SP', '92.601.709/0001-60', '(14) 3937-4145')
(2, '2', 'Lucca e Mait� Casa Noturna Ltda', 'Rua Jacob Lyra, 650 - Jardim Morada do Sol - Indaituba, SP', '44.705.171/0001-91', '(19) 3517-7934'),
(3, '3', 'Fernanda e Roberto Eletr�nica ME', 'Avenida Jos� Piovesan Netto, 700 - Recanto das Estrelas - Itatiba, SP', '65.663.603/0001-19', '(11) 2548-3473'),
(4, '4', 'M�rcio e Teresinha Lavanderia ME', 'Rua Oscar Louren�o, 121 - Jardim Alc�ntara - S�o Gon�alo, RJ', '47.981.683/0001-79', '(21) 3720-5221'),
(5, '5', 'Olivia e Jo�o Buffet Ltda', 'Rua Vandir Oliveira, 800 - Jo�o Caetano (Itambi) - Itabora�, RJ', '29.092.241/0001-90', '(21) 3730-6489');

INSERT INTO fornecedor (idfornecedor, nome, endereco, cnpj, telefone)
VALUES 
('1', 'Giovanni e Allana Alimentos Ltda', 'Travessa Francisco Medeiro da Silva, 692 - Nova Cidade - Nil�polis, RJ', '94.757.149/0001-63', '(21) 3740-0514'),
('2', 'Adriana e Daniel Comercio de Bebidas ME', 'Rua Correia de S�, 513 - Santa Teresa - Rio de Janeiro, RJ', '16.371.825/0001-52', '(21) 2669-3244'),
('3', 'Clarice e Isabelle Pizzaria Delivery Ltda', 'Rua S�o Louren�o, 312 - Ponta Negra - Maric�, RJ', '14.243.402/0001-21', '(21) 3951-5330'),
('4', 'Ot�vio e Fabiana Doces & Salgados ME', 'Rua C, 498 - Parque das Ilhas - Volta Redonda, RJ', '39.710.491/0001-08', '(24) 3703-0044'),
('5', 'nome_fornecedor', 'endereco_fornecedor', 'cnpj_fornecedor', 'telefone_fornecedor');

INSERT INTO produto (idproduto, nome, tipo, fabricante, preco)
VALUES 
('1', 'Pizza de Frango com Catupiry', 'Alimento', 'Pizarria Sousa Neves', 'R$45,70'),
('2', 'Tablet 13"', 'Eletr�nico', 'Positivo', 'R$346,80'),
('3', 'Macbook Pro 15,6"', 'Eletr�nico', 'Apple', 'R$7.234,60'),
('4', 'P�o de Batata Santa Helena', 'Alimento', 'Santa Helena Massas', 'R$3,50'),
('5', 'Suco Del Vale Sabor Laranja', 'Aliment�cio', 'Del Vale', 'R$5,30');



INSERT INTO pedido (idpedido, data pedido, datarecebimento, quantidade)
VALEUS
('1', '12/08/2016', '23/08/2016', '42'),
('2', '13/08/2016', '25/08/2016', '142'),
('3', '14/08/2016', '31/08/2016', '73'),
('4', '15/08/2016', '08/09/2016', '25'),
('5', '16/08/2016', '25/09/2016', '12');

INSERT INTO ocupacao (nome)
VALUES
('entregador'),
('zelador'),
('cozinheiro'),
('empacotador'),
('gerente');

INSERT INTO funcionarios (idfuncionario, nome, cpf, telefone, datadnascimento, coupacao, loja, deposito)
VALUES
('1', 'Jo�o da Silva', '381.391.650-26', '(11) 99891-1178' 'gerente', 'Lucca e Mait� Casa Noturna Ltda', 'Dep�sito Irmentz'),
('2', 'Paulo Augusto', '179.688.550-98', '(21) 98551-3782' 'empacotador', 'Fernanda e Roberto Eletr�nica ME', 'Dep�sito Sanch�z'),
('3', 'Joaquim Bernardo', ', '856.161.070-00', '(21) 98477-1949' 'gerente', 'Lucca e Mait� Casa Noturna Ltda', 'Dep�sito Alocation'),
('4', 'Pedro Assun��o', '428.568.610-40', '(21) 99464-7733' 'cozinheiro', 'Lucca e Mait� Casa Noturna Ltda', 'Dep�sito Big Space'),
('5', 'Bento Ribeiro', '258.331.550-10', '(21) 98136-5777' 'entregador', 'Lucca e Mait� Casa Noturna Ltda', 'Dep�sito Irmentz');

INSERT INTO cliente (nome, cpf, endereco, telefone)
VALUES
('Renan Breno Levi da Silva','285.891.311-06','Rua 5, 23 - Morada do Sol - Manacapuru, AM','(92) 3760-2900'),
('Daiane Alana Marli Rocha','644.203.965-04','Avenida Dois de Junho, 140 - Centro - Cacoal, RO','(69) 99578-5150'),
('Camila Milena Bianca da Cunha','945.418.566-70','Rua Dilson Jos� Dutra, 150 - Bela Vista III - Sete Lagoas, MG','(31) 2842-5373'),
('Carlos Manuel S�rgio Farias','105.159.594-05','Rua Peri, 12  - Nossa Senhora das Gra�as - Teresina, PI','(86) 3599-8072'),
('Raquel Milena Caroline da Paz','783.138.686-60','Rua Carij�s, 465 - S�o Jorge - Belford Roxo, RJ','(21) 98492-7453');

INSERT INTO loja_deposito (idloja, iddeposito)
VALUES
('1', '5'),
('2', '4'),
('3', '3'),
('4', '2'),
('5', '1');

INSERT INTO produto_deposito (quantidade, idproduto, iddeposito)
VALUES
('42', '1', '5'),
('57', '2', '4'),
('93', '3', '3'),
('12', '4', '2'),
('7', '5', '1');

INSERT INTO venda_produto (idvenda, idproduto)
VALUES
('1', '5'),
('2', '4'),
('3', '3'),
('4', '2'),
('5', '1');

INSERT INTO deposito_fornecedor(iddeposito, idfornecedor)
VALUES
('1', '5'),
('2', '4'),
('3', '3'),
('4', '2'),
('5', '1');

INSERT INTO pedido_produto (idpedido, idproduto)
VALUES
('1', '5'),
('2', '4'),
('3', '3'),
('4', '2'),
('5', '1');

INSERT INTO pedido_fornecedor (idpedido, fornecedor)
VALUES
('1', '5'),
('2', '4'),
('3', '3'),
('4', '2'),
('5', '1');
