// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract TransparentStorage {
    
    uint256 favNum;

    struct People {
        uint256 favNum;
        string name;
    }

    //uint256[] public favNumList;
    People[] public people;

    mapping(string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }
    //view, pure
    function retrieve() public view returns(uint256) {
        return favNum;
    }
    //calldata, memory & storage

    function addPerson(string memory _name, uint256 _favNum) public {
        people.push(People(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
}