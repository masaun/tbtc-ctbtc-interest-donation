pragma solidity ^0.5.11;

import "./TbObjects.sol";
import "./TbEvents.sol";


// shared storage
contract TbStorage is TbObjects, TbEvents {

    mapping (uint => ExampleObject) examples;

}

