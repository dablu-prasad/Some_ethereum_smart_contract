pragma solidity ^0.8.0;

//push
//pop
//getlength
//remove
//getArray

contract getArray{
    
    uint[] public arr;
    
    function pushArr(uint index) public {
        arr.push(index);
    }
    
    function popArr() public {
        arr.pop();
    }
    
    function remove(uint index) public {
        delete arr[index];
    }
    
    function getArray1() public view returns (uint[] memory){
         return arr;
    }
    
    function getLength() public view returns(uint) {
        return arr.length;
    }
}