// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DrugTraceability {
    address public owner;
    string public contractVersion = "1.0"; // Version control

    struct Drug {
        string name;
        string manufacturer;
        uint256 batchNumber;
        uint256 timestamp;
    }

    Drug[] public drugs;

    event DrugAdded(string name, string manufacturer, uint256 batchNumber, uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
        require(owner != address(0), "Invalid deployer address");
    }

    function addDrug(string memory _name, string memory _manufacturer, uint256 _batchNumber) public onlyOwner {
        drugs.push(Drug(_name, _manufacturer, _batchNumber, block.timestamp));
        emit DrugAdded(_name, _manufacturer, _batchNumber, block.timestamp);
    }

    function getDrugs() public view returns (Drug[] memory) {
        return drugs;
    }
}
