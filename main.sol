// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @custom:dev-run-script ./scripts/deploy_message_storage.js
contract MessageStorage {
    address private owner;
    string private secret;

    constructor() {
        owner = msg.sender;
    }

    function setMessage(string memory data) public {
        require(msg.sender == owner, "You are not the owner, so you cannot set the message");
        require(bytes(data).length <= 100, "Message exceeds 100 characters");
        secret = data;
    }

    function getMessage() public view returns (string memory) {
        require(msg.sender == owner, "You are not the owner, so you cannot read the message");
        return secret;
    }
}
