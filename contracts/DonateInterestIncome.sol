pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

// Storage
import "./storage/TbStorage.sol";
import "./storage/TbConstants.sol";

// tBTC
import "@keep-network/tbtc/contracts/deposit/Deposit.sol";

// Compound


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

    /* @dev - Test funtion for @keep-network/tbtc/contracts/deposit/Deposit.sol */
    function checkTerm(address payable _depositAddress) external {
        uint256 remainingTerm = Deposit(_depositAddress).remainingTerm();
    }

}
