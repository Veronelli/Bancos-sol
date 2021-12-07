pragma solidity ^0.8.0;
//import "./Banco.sol";
import {Banco} from "./Banco.sol";

contract Cliente is Banco{
    function altaCliente(string memory _nombre)public{
        nuevoCliente(_nombre);
    }
    function ingresarDinero(string memory _nombre,uint _dinero)public {
        clientes[_nombre].dinero += _dinero;
    }
    function retirarDinero(string memory _nombre, uint _dinero) public returns(bool ){
        bool flag = true;
        if(int(clientes[_nombre].dinero) - int(_dinero) >= 0){
        clientes[_nombre].dinero -= _dinero;

        }else{
            flag = false;
        }
        return flag;
    }

    function consultarDinero(string memory _nombre)public view returns(uint){
        return clientes[_nombre].dinero;
    }
}
