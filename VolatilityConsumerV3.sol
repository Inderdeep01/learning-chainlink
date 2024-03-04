// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract VolatilityConsumerV3 {
    AggregatorV3Interface internal volatilityFeed;

    /**
     * Network: Sepolia
     * Aggregator: 90-Day ETH APR
     * Address: 0x7422A64372f95F172962e2C0f371E0D9531DF276
     */

    constructor(){
        volatilityFeed = AggregatorV3Interface(
            0x7422A64372f95F172962e2C0f371E0D9531DF276
        );
    }

    function getVolatility() public view returns(int){
        (
            /*uint80 roundID*/,
            int volatility,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = volatilityFeed.latestRoundData();
        return volatility;
    }
}
// Sepolia 0x35707372CfB596436d338779f468DD1314fd6338