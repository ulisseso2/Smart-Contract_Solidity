// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

contract PrimaryContract {
    //declara propriedades
    address public relator;
    string public pauta;
    mapping (address => bool) eleitor;

    enum Opcao { Sim, Nao, Nulo, Abstencao }

    mapping (Opcao => address[] ) voto;

    constructor (string memory _pauta){
        relator = msg.sender;
        pauta = _pauta;
    }

    //declara methodos

    function votar (Opcao _opcao) public{
        require(!eleitor[msg.sender], "Ja votou");
        voto[_opcao].push(msg.sender);
        eleitor[msg.sender] = true;

    } 

    function verResultado (Opcao _opcao) public view returns (address[] memory){
        return (voto[_opcao]);
    }   
}