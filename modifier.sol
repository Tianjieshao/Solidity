//修改器可以用来改变方法的行为，比如在方法正式执行之前，检查方法是否满足条件，满足
//则zhi'xing执行，不满足就抛出异常等
pragma solidity ^0.4.0;
contract modifierDemo{
    address public owner;
    uint public u;
    function modifierDemo(){
        owner = msg.sender;
    }
    modifier onlyOwner{
        if(msg.sender != owner){
            throw;//抛出异常
        }else{
            _;  //继续往下执行
        }
    }
    function set(uint _u) onlyOwner{ //被onlyownerx修改器修饰，只有符合它的才继续执行
        u = _u;
    }
}