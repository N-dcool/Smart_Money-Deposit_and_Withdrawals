// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract SampleContract{
    string public myString = "Hello World";

    function updateString(string memory _newString) public payable returns(string memory){
        if(msg.value == 1 ether){
            myString = _newString;
            return "Successful";
        }
        else{
            payable(msg.sender).transfer(msg.value);
            return "unsuccessful";
        }
        
    }
}