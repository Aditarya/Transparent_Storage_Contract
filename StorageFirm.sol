// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./TransStorage.sol";

contract StorageFirm {
    TransStorage[] public transStorageArray;

    function createTransStorage() public {
        TransStorage transStorage = new TransStorage();
        transStorageArray.push(transStorage);
    }

    function sfStore(uint256 _transStorageIndex, uint256 transStorageNumber) public {
        //Address
        //ABI- Application Binary Interface
        //TransStorage transStorage = transStorageArry[_transStorageIndex];
        //transStorage.store(_transStorageNumner);
        transStorageArray[_transStorageIndex].store(transStorageNumber);
    }
    function sfGet(uint256 _transStorageIndex) public view returns(uint256) {
        return transStorageArray[_transStorageIndex].retrieve();
    }

}