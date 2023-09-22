
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNumber=1;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public  people;
    function store(uint256 _myFavoriteNumber) public {
        myFavoriteNumber = _myFavoriteNumber;
    }

    function retrive() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function  addPerson(uint256 _favoriteNumber,string memory _name) public  {
        Person memory   person=Person(_favoriteNumber,_name);
        people.push(person);
       // people.push(Person(_favoriteNumber,_name));

    }
}
