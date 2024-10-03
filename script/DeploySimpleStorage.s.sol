// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // stating our version

import {Script} from "forge-std/Script.sol"; // import script from lib
import {SimpleStorage} from "../src/SimpleStorage.sol"; // import the SimpleStorage.sol contract

// This contract inherits from the Script contract
contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // vm is a special keywork in the forge standard library. Can only be used in foundry

        // everything between startBroadcast and stopBroadcast will be executed in the VM

        SimpleStorage simpleStorage = new SimpleStorage(); // the 'New' keyword creates a new contract
        vm.stopBroadcast();

        return simpleStorage;
    }
}
