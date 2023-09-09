// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

// public variables here
contract MyToken {
    string public name;
    uint256 public Supply;
    string public symbol;
    
// mapping variable here
    mapping(address => uint256) public balances;

    constructor(string memory input_name, string memory input_symbol, uint256 _totalSupply) {
        name = input_name;
        Supply = _totalSupply;
        symbol =  input_symbol;
        
    }
   
    // mint function
    function mint(address _to, uint256 _value) public {
        Supply += _value;
        balances[_to] += _value;
    }

    // burn function
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "no balance");
        Supply -= _value;
        balances[_from] -= _value;
    }
}