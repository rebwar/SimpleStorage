//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;
contract SimpleStorage{
     uint256 public myFavoriteNumber=5;
     struct Person{
          uint256 favoriteNumber;
          string name;
     }
     mapping(string=>uint256) public nameToFavoriteNumber;
     Person[] public allPeople;
     function store(uint256 _favoriteNumber) public{
          myFavoriteNumber = _favoriteNumber;
     }

     function retrive() public view returns(uint256){
          return myFavoriteNumber;
     }

     function addPeople(uint256 _favoriteNumber,string memory _name) public{
          allPeople.push(Person(_favoriteNumber,_name));
          nameToFavoriteNumber[_name]=_favoriteNumber;
     }

     // function addNumMemory(uint256[] memory _nums) public{
     //      for(uint i=0;i<_nums.length;i++){
     //           _nums(i)=i;
     //      }
     // }
     

     

}
