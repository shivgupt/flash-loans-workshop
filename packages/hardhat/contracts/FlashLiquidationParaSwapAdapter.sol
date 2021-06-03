// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "hardhat/console.sol";

// Paraswap Adapter
import { IParaSwapLiquiditySwapAdaptor } from "./interfaces/IParaSwapLiquiditySwapAdaptor.sol";
import {IERC20} from '@aave/protocol-v2/contracts/dependencies/openzeppelin/contracts/IERC20.sol';

contract FlashLiquidationAdaptor is IParaSwapLiquiditySwapAdaptor {
  constructor() public{
    console.log("Dp");
  }
}