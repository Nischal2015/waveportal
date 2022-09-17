// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) public senderToCount;

    constructor() {
        console.log("This is my first interaction with smart contracts and hardhat");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved", msg.sender);
        countWavesBySender(msg.sender);
    }

    // View function
    // Returns the total no. of waves
    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves\n", totalWaves);
        return totalWaves;
    }

    function countWavesBySender(address _sender) public {
        senderToCount[_sender] += 1;
        console.log("%s - %d", _sender, senderToCount[_sender]);
    }
}
