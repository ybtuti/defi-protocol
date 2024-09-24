// SPDX-License-Identifier: MIT

// Layout of contract:
// Version
// Imports
// Interfaces, libraries, contracts
// Errors
// type declations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions;
// Constructors
// Receive function
// Fallback Function
// External
// Public
// Internal
// Private
// View & Pure functions

pragma solidity ^0.8.18;

import {DecentralizedStableCoin} from "./DecentralizedStableCoin.sol";

/**
* @title DSCEngine
* @author ybtuti
* 
* The system is designed to be as minimal as possible, and have the tokens maintain a 1
token == $1 peg.
* This stablecoin has the properties:
* - Exogeonous Collateral
* - Dollar Pegged
* - Algorithmically Stable
* It is similar to DAI if DAI had no governance, no fees, and was only backed by WETH and WBTC.
*
* DSC system should always be overcolleratalized. At no point should the value of collateral be less than or equal to value of all the DSC
* @notice This contract is the core of the DSC System. It handles all the logic for mining
and redeeming DSC, as well as depositing & withdrawing collateral.
*/
contract DSCEngine {
    //////////////// Errors ////////////////
    error DSCEngine__NeedsMoreThanZero();
    error DSCEngine__TokenAddressesAndPriceFeedAddressesMustBeSameLength();

    ///////////////////////////
    ///// State Variables /////
    ///////////////////////////

    mapping(address token => address priceFeed) private s_priceFeeds;

    DecentralizedStableCoin private immutable i_dsc;

    /////////////////////
    ///// Modifiers /////
    /////////////////////
    modifier moreThanZero(uint256 amount) {
        if (amount == 0) {
            revert DSCEngine__NeedsMoreThanZero();
        }
        _;
    }

    // modifier isAllowedToken(address token){

    // }
    /////////////////////
    ///// Functions /////
    /////////////////////

    constructor(
        address[] memory tokenAddresses,
        address[] memory priceFeedAddress,
        address dscAddress
    ) {
        //USD Price Feeds
        if (tokenAddresses.length != priceFeedAddress.length) {
            revert DSCEngine__TokenAddressesAndPriceFeedAddressesMustBeSameLength();
        }
        for (uint256 i = 0; i < tokenAddresses.length; i++) {
            s_priceFeeds[tokenAddresses[i]] = priceFeedAddress[i];
        }
        i_dsc = DecentralizedStableCoin(dscAddress);
    }

    //////////////////////////////
    ///// External Functions /////
    //////////////////////////////

    function depositCollateralAndMintDsc() external {}

    /*
     *
     * @param tokenCollateralAddress The address of the token to deposit as collateral
     * @param amountCollateral The amount of collateral to deposit
     */
    function depositCollateral(
        address tokenCollateralAddress,
        uint256 amountCollateral
    ) external moreThanZero(amountCollateral) {}

    function redeemCollateralForDsc() external {}

    function redeemCollateral() external {}

    function mintDsc() external {}

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}
