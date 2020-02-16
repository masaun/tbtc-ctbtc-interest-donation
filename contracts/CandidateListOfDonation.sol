pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

// Storage
import "./storage/TbStorage.sol";
import "./storage/TbConstants.sol";

// tBTC or Compound



/***
 * @notice - This is managed contract that organization or individual who need to give them donation.
 */
contract CandidateListOfDonation is Ownable, TbStorage, TbConstants {

    address candidateListOfDonation[] public candidateList;

    constructor() public {}

    function testFunc() public returns (bool) {
        return MpConstants.CONFIRMED;
    }

    function candidateRegistry(address candidateAddress) public returns (address) {
        candidateList.push(candidateAddress);
        return candidateAddress;
    }

    function getCandidateListOfDonation() public view returns (address[]) {
        return candidateList;
    }

}
