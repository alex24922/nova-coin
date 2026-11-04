
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NovaCoin is ERC20 {
    uint8 private constant NOVA_DECIMALS = 8;

    uint256 public constant MAX_SUPPLY =
        21_000_000 * 10 ** NOVA_DECIMALS;

    constructor() ERC20("NOVA COIN", "NOVA") {
        _mint(msg.sender, MAX_SUPPLY);
    }

    function decimals() public pure override returns (uint8) {
        return NOVA_DECIMALS;
    }
}
