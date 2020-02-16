pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC721/IERC721.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

// Storage
import "./storage/TbStorage.sol";
import "./storage/TbConstants.sol";

// tBTC or Compound



/***
 * @notice - This is managed contract that organization or individual who need to give them donation.
 */
contract CandidateListOfDonation is Ownable, TbStorage, TbConstants {

    address private testERC20Ropsten;
    address private testERC721Ropsten;

    constructor(
        address _testERC20Ropsten, 
        address _testERC721Ropsten,
    ) public {
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
