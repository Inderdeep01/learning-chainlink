// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {AggregatorV3Interface} from "@chainlink/contracts@0.8.0/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract DataConsumerV3 {
    AggregatorV3Interface internal dataFeed;

    /**
     * Network: Sepolia
     * Aggregator: LINK/USD
     * Address: 0xc59E3633BAAC79493d908e63626716e204A45EdF
     */
    constructor() {
        dataFeed = AggregatorV3Interface(
            0xc59E3633BAAC79493d908e63626716e204A45EdF
        );
    }

    /**
     * Returns the latest answer.
     */
    function getChainlinkDataFeedLatestAnswer() public view returns (int) {
        // prettier-ignore
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        return answer;
    }
}
// Depployed at address : 0x2CA70De4Ce667610dC99B8408987878ecfDdc31b