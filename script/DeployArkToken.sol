// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
import {Script} from "forge-std/Script.sol";
import {ArkToken} from "../src/ArkToken.sol";

contract DeployArkToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external {
        vm.startBroadcast();
        new ArkToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}
