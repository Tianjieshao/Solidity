pragma solidity ^0.4.18;
contract blockdemo{
    bytes32 public _blockHash;
    address public _coinbase = block.coinbase;//当前矿工地址
    uint public _difficulty = block.difficulty;//当前区块难度难度
  
    uint public _number = block.number;
    bytes public _data = msg.data;
    uint public _gas = msg.gas;
    address public _sender = msg.sender;
  
    uint  public _value = msg.value;
    uint  public _gasPrice = tx.gasprice;
    address public _origin = tx.origin;     

    function blocknum() payable{
       // _blockHash  = block.blockhash(block.number);
        
    }
    function getHash(){
        
        _blockHash = block.blockhash(block.number);
        
    }
    
    
    
    
}