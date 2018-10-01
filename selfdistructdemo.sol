//selfdestruct(address recipient**容器，接收者,容纳者**)
//销毁当前合约，并且把当前合约de的余额发送给指定的地址
pragma solidity ^0.4.0;
contract selfdestructDemo{
    uint internal u =10;
    function test() returns(uint){
        return 100;
    }
    function selfdestructDemo() payable{
        
    }
    function kill(address add){
        selfdestruct(add);
    }
}