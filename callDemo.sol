pragma solidity ^0.4.0;
contract CA{
    uint public p;
    bytes public failmsg;
    event e(address add,uint p);
    function fun(uint u1,uint u2){
        p =u1+u2;
        e(msg.sender,p);
    }
    function (){
        failmsg = msg.data;
    }

}
contract CB{
    uint public q;
    bool public b;
    function call1(address add) returns(bool){
        b = add.call(bytes4(keccak256("fun(uint256,uint256)")),2,3);//此处调用改变的只是被调用合约中的值，   
        return b;
    }
    function call2(address add) returns(bool){
        b = add.delegatecall(bytes4(keccak256("fun(uint256,uint256)")),1,3);//改变的是当前合约中对应的值  
        return b;
    }
    function call3(address add) returns(bool){
        b =false;
        b = add.call("aaaa",256,100);
    }
    
    
}