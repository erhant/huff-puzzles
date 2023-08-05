// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

/// @notice original code belongs to author below
/// @notice I modified slightly to match other examples in the repo
/// @notice Most notably, instead of (hash, sig) we send (sig, hash)
/// @notice due to: https://twitter.com/huff_language/status/1586429973958520837
/// @author Pranesh <github.com/PraneshASP>
contract Challenge5Test is Test {
    address target;

    function setUp() public {
        target = HuffDeployer.config().deploy("challenges/Challenge5");
    }

    // 0x1556a70d76cc452ae54e83bb167a9041f0d062d000fa0dcb42593f77c544f6471643d14dbd6a6edc658f4b16699a585181a08dba4f6d16a9273e0e2cbed622da1b3ea2f1d0abf3fc66cf29eebb70cbd4e7fe762ef8a09bcc06c8edf641230afec0

    function testSignaturePass() public {
        bytes32 messageHash = hex"3ea2f1d0abf3fc66cf29eebb70cbd4e7fe762ef8a09bcc06c8edf641230afec0";
        bytes
            memory signature = hex"1556a70d76cc452ae54e83bb167a9041f0d062d000fa0dcb42593f77c544f6471643d14dbd6a6edc658f4b16699a585181a08dba4f6d16a9273e0e2cbed622da1b";
        bytes memory input = abi.encodePacked(signature, messageHash);

        vm.prank(0x80C67eEC6f8518B5Bb707ECc718B53782AC71543); // valid address
        (bool success, bytes memory retData) = target.staticcall(input);
        assertTrue(success);
        assertEq(retData, abi.encode(1));
    }

    function testSignaturePass2() public {
        bytes32 messageHash = hex"97c943890b15f4dea02c3ae1653252489599957b280a95bf2e533fdbc8facb58";
        bytes
            memory signature = hex"d361e8ea11167286b3e9874de12a2e82a46a12d5adada287fc356f7a1583ce352aa8da5efafc3996294bddbafbec34f46932c081c9853e1233df46b2a2d216021c";
        bytes memory input = abi.encodePacked(signature, messageHash);

        vm.prank(0x98b4d7B30aa38BadB24D95517796e19127975dD5); // valid address
        (bool success, bytes memory retData) = target.staticcall(input);
        assertTrue(success);
        assertEq(retData, abi.encode(1));
    }

    function testSignatureRevert() public {
        bytes32 messageHash = hex"3ea2f1d0abf3fc66cf29eebb70cbd4e7fe762ef8a09bcc06c8edf641230afec0";
        bytes
            memory signature = hex"1556a70d76cc452ae54e83bb167a9041f0d062d000fa0dcb42593f77c544f6471643d14dbd6a6edc658f4b16699a585181a08dba4f6d16a9273e0e2cbed622da1b";
        bytes memory input = abi.encodePacked(signature, messageHash);

        vm.prank(0x7156526fbD7a3c72969B54F64e42c10fBB768C8B); // invalid address
        (bool success, ) = target.staticcall(input);
        assertFalse(success);
    }
}
