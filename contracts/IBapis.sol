pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

/**
 * @dev Required interface of an Bapis compliant contract.
 */
// SPDX-License-Identifier: GLWTPL
interface IBapis {

    enum State {
        NONE,
        CREATED,
        LOCKED,
        AGREEMENT_SUCCESS,
        AGREEMENT_FAIL,
        COMPLETED,
        CLOSED
    }

    struct ERC20Token {
        address origin;
        uint256 amount;
    }

    struct Service {

        ERC20Token remuneration;
    }

    struct Deal {
        State state;
        address creator;
        address executor;
        Service service;
        mapping(uint32 => Service) extensions;
        uint32 totalExtensions;
        uint256 currentPaymentId;
        uint256 currentInquiryId;
    }

    struct Payment {
        uint256 dealId;
        bool creatorAgreed;
    }

    struct ExtensionRequest {

    }

    struct Inquiry {
        uint256 dealId;
        address from;
        InquiryReason reason;
        InquiryWish reason;
    }

    enum InquiryReason {

    }

    enum InquiryWish {
        PAYMENT_SEND,
        PAYMENT_REFUND
    }
}