use lojas;

CREATE TABLE deposito (
iddeposito INT,
nome VARCHAR(40),
endereco VARCHAR(60),
cnpj VARCHAR (20),
telefone VARCHAR (15),
PRIMARY KEY (iddeposito)
);

CREATE TABLE distribuidor (
iddistribuidor INT,
dataentrega DATE,
quantidade INT,
iddeposito INT,
PRIMARY KEY (iddistribuidor),
FOREIGN KEY (iddeposito) REFERENCES deposito (iddeposito)
);

CREATE TABLE loja ( 
idloja INT, 
nome VARCHAR (40),
endereco VARCHAR (40),
telefone VARCHAR (40),
cnpj VARCHAR (40),
PRIMARY KEY (idloja),
);

CREATE TABLE fornecedor (
idfornecedor INT,
nome VARCHAR (40),
endereco VARCHAR (40),
telefone VARCHAR (40),
cnpj VARCHAR (40),
PRIMARY KEY (idfornecedor),
);

CREATE TABLE produto (
idproduto INT,
nome VARCHAR(50),
tipo VARCHAR(20),
fabricante VARCHAR(30),
preco FLOAT,
PRIMARY KEY (idproduto),
); 


CREATE TABLE pedido (
idpedido INT,
datapedido DATE,
datarecebimento DATE,
quantidade INT,
idfornecedor INT,
PRIMARY KEY (idpedido),
FOREIGN KEY (idfornecedor) REFERENCES fornecedor (idfornecedor)
);

CREATE TABLE venda (
idvenda INT,
datavenda DATE,
horavenda TIME,
idloja INT,
PRIMARY KEY (idvenda),
FOREIGN KEY (idloja) REFERENCES loja (idloja)

);

CREATE TABLE ocupacao (
nome VARCHAR (40),
PRIMARY KEY (nome),
);

CREATE TABLE funcionarios (
idfuncionario INT,
nome VARCHAR(50),
cpf VARCHAR(15),
telefone VARCHAR(15),
datanascimento DATE,
ocupacao VARCHAR(40),
idloja INT,
iddeposito INT,
PRIMARY KEY(idfuncionario),
FOREIGN KEY (ocupacao) REFERENCES ocupacao (nome),
FOREIGN KEY (idloja) REFERENCES loja (idloja),
FOREIGN KEY (iddeposito) REFERENCES deposito (iddeposito),
);
CREATE TABLE cliente(
cpf INT,
nome VARCHAR (40),
endereco VARCHAR (40),
telefone VARCHAR (40),
idvenda INT,
PRIMARY KEY (cpf),
FOREIGN KEY (idvenda) REFERENCES venda (idvenda),
);

CREATE TABLE venda_produto (
idvenda INT,
idproduto INT,
PRIMARY KEY (idvenda, idproduto),
FOREIGN KEY (idvenda) REFERENCES venda (idvenda),
FOREIGN KEY (idproduto) REFERENCES produto (idproduto)
);

CREATE TABLE loja_deposito (
idloja INT,
iddeposito INT,
PRIMARY KEY (idloja, iddeposito),
FOREIGN KEY (idloja) REFERENCES loja(idloja),
FOREIGN KEY (iddeposito) REFERENCES deposito(iddeposito) 
);

CREATE TABLE produto_deposito (
idproduto INT,
iddeposito INT,
quantidade INT,
PRIMARY KEY (idproduto, iddeposito),
FOREIGN KEY (idproduto) REFERENCES produto (idproduto),
FOREIGN KEY (iddeposito) REFERENCES deposito (iddeposito)
);

CREATE TABLE pedido_produto (
idpedido INT,
idproduto INT,
PRIMARY KEY (idpedido, idproduto),
FOREIGN KEY (idpedido) REFERENCES pedido (idpedido),
FOREIGN KEY (idproduto) REFERENCES produto (idproduto) 
);


