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

    constructor() public {
        // @Notice - Ropsten
        IERC20(_testERC20Ropsten);
        IERC721(_testERC721Ropsten);

        testERC20Ropsten = _testERC20Ropsten;
        testERC721Ropsten = _testERC721Ropsten;
    }

    function testFunc() public returns (bool) {
        return MpConstants.CONFIRMED;
    }

}
