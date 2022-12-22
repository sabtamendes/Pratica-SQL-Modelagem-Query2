CREATE TABLE alunos(
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email TEXT NOT NULL,
    turma_id INTEGER NOT NULL REFERENCES "turma"("id")
);

CREATE TABLE turma(
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    codigo TEXT NOT NULL,
    modulo_id INTEGER NOT NULL REFERENCES "modulo"("id")
);

CREATE TABLE modulo(
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    turma_id INTEGER NOT NULL REFERENCES "turma"("id")
);

CREATE TABLE projetos(
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE,
    nota TEXT NOT NULL,
    data_entrega TIME NOT NULL
);

CREATE TABLE acima_das_expectativas(
    id SERIAL PRIMARY KEY,
    nota INTEGER REFERENCES "projeto"("nota")
);

CREATE TABLE dentro_das_expectativas(
    id SERIAL PRIMARY KEY,
    nota INTEGER REFERENCES "projeto"("nota")
);

CREATE TABLE abaixo_das_expectativas(
    id SERIAL PRIMARY KEY,
    nota INTEGER REFERENCES "projeto"("nota")
);