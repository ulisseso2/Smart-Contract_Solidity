Smart Contract Ethereum

Modelo de Sistema de Votação feito na linguagem Solidity para a Blockchain da Ethereum.

Relator faz deploy da pauta da votação;
Eleitores votam através de suas carteiras;
A visualização dos votos é livre;

Contrução bem simples:
- Identificação do Relator (responsável pela plublicação do contrato);
- Texto da pauta; 
- Lista de opções para votação( enum )
- lista de votação associadas ao address do eleitor e seu voto;
- Lista de eleitores para impedir voto duplicado

- Constructor do contrato contendo apenas pauta e Relator

- Função Votar (verifica lista de votantes e salva novo voto)
- Função ver votos (pública)
