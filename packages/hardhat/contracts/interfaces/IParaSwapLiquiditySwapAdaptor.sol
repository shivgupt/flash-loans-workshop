
// SPDX-License-Identifier: agpl-3.0
 pragma solidity 0.6.12;
 pragma experimental ABIEncoderV2;

 /**
  * @title ParaSwapLiquiditySwapAdapter
  * @notice Adapter to swap liquidity using ParaSwap.
  * @author Jason Raymond Bell
  */

import {IERC20Detailed} from '@aave/protocol-v2/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol';

interface IParaSwapAugustus {
   function getTokenTransferProxy() external view returns (address);
}

interface IParaSwapLiquiditySwapAdaptor {
    struct PermitSignature {
        uint256 amount;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    function swapAndDeposit(
        IERC20Detailed assetToSwapFrom,
        IERC20Detailed assetToSwapTo,
        uint256 amountToSwap,
        uint256 minAmountToReceive,
        uint256 swapAllBalanceOffset,
        bytes calldata swapCalldata,
        IParaSwapAugustus augustus,
        PermitSignature calldata permitParams
    ) external;
 }