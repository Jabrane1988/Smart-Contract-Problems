// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Donation {
    address public donatur;
    address payable donatee;
    uint256 public money;
    string public useless_variable;

    constructor() public {
        donatee = payable(msg.sender);
        useless_variable = "Donation string";
    }

    function change_useless_variable(string memory param) public {
        useless_variable = param;
    }

    function donate() public payable {
        donatur = msg.sender;
        money = msg.value;
    }

    function recceive_donation() public {
        donatee.transfer(address(this).balance);
    }
}
