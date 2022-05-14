//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.4;

// Library for handling fractional numbers
library UQ112x112 {
    uint224 internal constant Q112 = 2**112;

    // function encodes a uint112 number to UQ112x112
    function encode(uint112 y) internal pure returns (uint224 z) {
        z = uint224(y) * Q112;
    }

    // function divides a UQ112x112 with uint112
    function uqdiv(uint224 x, uint112 y) internal pure returns (uint224 z) {
        z = x / uint224(y);
    }
}
