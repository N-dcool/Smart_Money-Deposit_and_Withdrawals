// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.15;

contract SampleFallback {

    uint public lastValueSend;
    string public lastFunctionCalled;
    uint public myUint;

    function setMyUint(uint _myNewUint) public {
        myUint = _myNewUint;
    }
    /*
    0xe492fd84000000000000000000000000000000000000000000000000000000000000000c  for 12
    0xe492fd840000000000000000000000000000000000000000000000000000000000000001  for 1

    Keccakas of "setMyUint(uint256)" == 0xe492fd842fb25dc4b3c624c80776108b452a545c682a78e4252b5560c6537b79

    all above have common => 0xe492fd84 (which is hex value for function and remaining is input data)

    if I paste 0xe492fd84000000000000000000000000000000000000000000000000000000000000000c into callData 
    it will set myUint to 12 (Amazing stuff 🤓)

    if I paste wrong valid hexcode it will run fallback function only if low level intraction fails to delever.
    */

    

    receive() external payable {
        lastValueSend = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        lastValueSend = msg.value;
        lastFunctionCalled = "fallback";
    }

}