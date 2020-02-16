pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

// Storage
import "./storage/TbStorage.sol";
import "./storage/TbConstants.sol";

// tBTC
import "@keep-network/tbtc/contracts/deposit/Deposit.sol";

// Compound
import "./compound-protocol/CErc20.sol";

// Option (Candidate) list of Donation
import "./CandidateListOfDonation.sol";


/***
 * @notice - This is contract for managing donation process  
 ***/
contract DonateInterestIncome is Ownable, TbStorage, TbConstants {

    CErc20 public cErc20;
    Deposit public deposit;
    CandidateListOfDonation public candidateList;

    address cTBTC = 0xb40d042a65dd413ae0fd85becf8d722e16bc46f1;  // cTBTC contractAddress on Ropsten

    constructor(
        address payable _depositAddress, 
        address _candidateList,

        // Compound
        address cTBTC,
        ComptrollerInterface comptroller_,
        InterestRateModel interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public {
        deposit = Deposit(_depositAddress);
        candidateList = CandidateListOfDonation(_candidateList);
        
        // Create cTBTC instance
        cErc20 = CErc20(cTBTC,
                        comptroller_,
                        interestRateModel_,
                        initialExchangeRateMantissa_,
                        name_,
                        symbol_,
                        decimals_);
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
