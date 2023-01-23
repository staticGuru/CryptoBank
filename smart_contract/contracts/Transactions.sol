// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Transactions {
    uint256 transactionCount;

    event Transfer(
        address from,
        address receiver,
        uint amount,
        string message,
        uint256 timestamp,
        string keyword
    );
    struct TransferStruct {
        address senders;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    TransferStruct[] transactions;

    function addToBlockchain(
        address payable receiver,
        uint amount,
        string memory message,
        string memory keyword
    ) public {
        //publically accessible from anywhere
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );
        emit Transfer(msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword);
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        //publically accessible from anywhere
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        //publically accessible from anywhere
        return transactionCount;
    }
}
