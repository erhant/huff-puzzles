// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract Challenge1Test is Test {
  Challenge1 target;

  function setUp() public {
    target = Challenge1(HuffDeployer.deploy("challenges/Challenge1"));
  }

  function testChallenge() public {
    assertEq(target.call(), block.number);
  }
}

interface Challenge1 {
  function call() external view returns (uint256);
}