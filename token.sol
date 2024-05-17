// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    
    // public variables here
        string public tokenName = "INTERNET";
        string public tokenAbbrv = "INET";
        uint public totalSupply =0;

    // mapping variable here
        mapping(address => uint) public bal;

    // mint function
        function mint(address add, uint val) public{
            totalSupply += val;
            bal[add] += val;
        }
    // burn function
        function burn(address add, uint val) public{
            if(bal[add] >= val){
                totalSupply -= val;
                bal[add] -= val;
            }
        }
     }