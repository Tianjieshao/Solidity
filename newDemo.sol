pragma solidity ^0.4.0;
//One contract creates another contract. 
contract E{
    uint public x;
    uint public amount;
    function E(uint _a) payable{
        x = _a;
        amount = msg.value;
    } 
}
contract D{
    event(uint x,uint amount);
    D d = new D(4);
    function D(uint _u) payable{
        e(d.x(),d.amount());
        D d1 = new D(_u);
        e(d1.x(),d1.amount());
    }
    function CreateD(uint _x,uint amount){
        D d2 = (new D).value(amount)(_x);
        e(d2.x(),d2.amount());
    } 
}