pragma solidity ^0.5.11;


/// @title Shared constants
contract TbConstants {

    /**
     * @dev - Reference from https://developer.kyber.network/docs/API_ABI-KyberNetworkProxy/
     */
    address srcAddressTest = '0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee';
    address walletAddressTest = "0x0000000000000000000000000000000000000000";

    /**
     * @notice In Exp terms, 1e18 is 1, or 100%
     */
    uint256 constant hundredPercent = 1e18;

    /**
     * @notice In Exp terms, 1e16 is 0.01, or 1%
     */
    uint256 constant onePercent = 1e16;

    bool constant CONFIRMED = true;

    uint8 constant EXAMPLE_VALUE = 1;

}
