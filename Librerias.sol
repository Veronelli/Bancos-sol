pragma solidity ^0.8.0;

library Operaciones{
    function divicion(uint _y, uint _j)public pure returns(uint){
        require(_j > 0 );
        return _y/_j;
    }
    function multiplicacion(uint _y, uint _j)public pure returns(uint){
        if((_y==0)||(_j==0)){
            return 0;
        }
        return _j*_y;
    }
}

contract Calculos{
    using Operaciones for uint;

    function caculos(uint _a,uint _b)public pure returns(uint,uint){
        uint m = _a.divicion(_b);
        uint n = _a.multiplicacion(_b);
        return(m,n);
        //return (_a.divicion(_b),_a.multiplicacion(_b));

    }
}