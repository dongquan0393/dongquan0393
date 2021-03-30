pragma solidity ^0.5.13;

contract SendMoney {
    
    
    uint public balanceReceived;
    
    function receiveMoney() public payable {
        balanceReceived += msg.value;
        
    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function WithdrawMoney() public {
        address payable to = msg.sender;
        
        to.transfer(this.getBalance());
    }
    
    function WithdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }
}