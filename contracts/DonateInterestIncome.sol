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

    Deposit public deposit;
    CandidateListOfDonation public candidateList;

    constructor(address payable _depositAddress, address _candidateList) public {
        deposit = Deposit(_depositAddress);
        candidateList = CandidateListOfDonation(_candidateList);
    }

    function testFunc() public returns (bool) {
        return MpConstants.CONFIRMED;
    }

    /*** 
     * @dev - Test funtion for @keep-network/tbtc/contracts/deposit/Deposit.sol 
     ***/
    function checkTerm() external {
        uint256 remainingTerm = deposit.remainingTerm();
    }


    function _getCandidateListOfDonation() public view returns (address[]) {
        return candidateList.getCandidateListOfDonation();
    }


    /*** 
     * @dev - Get interest income from deposited cTBTC by using compound.
     ***/    
    function getInterestIncomeFromCTBTC(address userAddr) public view returns (uint256) {
        // In progress
        uint256 interestIncomeFromCTBTC;
        return interestIncomeFromCTBTC;
    }
    

}
