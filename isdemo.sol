pragma solidity ^0.4.0;
contract F{
    uint internal u = 10;
    function test() returns(uint){
        return 100;
    }
}
contract F1{
    uint public fu;
    function F1(uint _u){
        fu = _u;
    }
}       
contract F2 is F,F1(20){//合约执行时候只创建F2就行，且F1的参数必须传递，要
//不没实现该方法
    uint public c1;
    uint public c2;
    uint public c3;
    function c(){
        c1 = F.u;
        c2 = F.test();
        c3 = F1.fu;
    }
}