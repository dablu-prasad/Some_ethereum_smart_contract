pragma solidity ^0.8.0;


contract ArrayCompact
{
uint[] public arr;

function remove(uint index) public {
    arr[index]=arr[arr.length-1];
    arr.pop();
}

function test() public{
    arr.push(1);
    arr.push(2);
    arr.push(3);
    arr.push(4);


remove(1);
assert(arr.length==3);
assert(arr[0]==1);
assert(arr[1]==4);
assert(arr[2]==3);

remove(2);

assert(arr.length==2);
assert(arr[0]==1);
assert(arr[1]==4);
}
}