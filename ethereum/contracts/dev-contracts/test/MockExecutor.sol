// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "../../zksync/facets/Base.sol";

contract MockExecutorFacet is Base {
    function saveL2LogsRootHash(uint256 _blockNumber, bytes32 _l2LogsTreeRoot) external {
        s.totalBlocksExecuted = _blockNumber;
        s.l2LogsRootHashes[_blockNumber] = _l2LogsTreeRoot;
    }
}