//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*contract Mapping{
    mapping (address => uint) public map;

     function Get(address _map) public view returns (uint) {
        return map[_map];
    }
      function Set(address _map, uint _i) public {
        // Update the value at this address
        map[_map] = _i;
    }

    function Remove(address _map) public {
        // Reset the value to the default value.
        delete map[_map];
    }
} */
    // Nested mapping (mapping from address to another mapping)

    contract NestedMapping{
        mapping(address => mapping (uint => bool)) public NestedMap;

        function get(address _map, uint _id) public view returns(bool){
            return NestedMap[_map] [_id];
        }
        function set(address _map, uint _id, bool _boo) public {
            NestedMap[_map] [_id] = _boo;
        }
        function remove(address _map, uint _id) public{
            delete NestedMap[_map] [_id];
        } 
    }