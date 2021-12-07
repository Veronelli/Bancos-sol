pragma solidity ^0.8.0;

contract Banco{
    //Definir un tipo de dato complejo
    struct cliente{
        string nombre;
        address direccion;
        uint dinero;
    }

    //mapping que nos relaciona el nombre del cliente con el tipo de dato cliente
    mapping(string=>cliente) clientes;

    //Funcion que nos permite dar de alta un nuevo cliente
    function nuevoCliente(string memory _nombre)internal {
        clientes[_nombre] =cliente(_nombre,msg.sender,0);

    }

}

contract Banco2{
}

contract Banco3 {
}