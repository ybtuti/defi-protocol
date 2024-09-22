// SPDX-License-Identifier: MIT

// Layout of contract:
// Version
// Imports
// Errors
// Interfaces, libraries, contracts
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
    function depositCollateralAndMintDsc() external {}

    function depositCollateral() external {}

    function redeemCollateralForDsc() external {}

    function redeemCollateral() external {}

    function mintDsc() external {}

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}
