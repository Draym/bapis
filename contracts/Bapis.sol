pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/utils/Counters.sol";

import "./IBapis.sol";

// SPDX-License-Identifier: GLWTPL
contract Bapis is IBapis {
    using Counters for Counters.Counter;
    Counters.Counter private _dealIds;
}