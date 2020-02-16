pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

// Storage
import "./storage/TbStorage.sol";
import "./storage/TbConstants.sol";

// tBTC or Compound

// Option (Candidate) list of Donation
import "./CandidateListOfDonation.sol";


/***
 * @notice - This is contract for managing donation process  
 ***/
contract DonateInterestIncome is Ownable, TbStorage, TbConstants {

    constructor() public {}

    function testFunc() public returns (bool) {
        return MpConstants.CONFIRMED;
    }

}
