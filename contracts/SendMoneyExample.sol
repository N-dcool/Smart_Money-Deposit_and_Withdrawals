// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract SendMoneyExample { 
    
    uint public balancedReceived;

    function deposit() public payable {
        balancedReceived += msg.value;
    }

    function getContaractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContaractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContaractBalance());
    }
}