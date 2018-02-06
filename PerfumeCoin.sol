pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract PerfumeCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function PerfumeCoin(address _owner)  UpgradeableToken(_owner) {
    name = "PerfumeCoin";
    symbol = "PRF";
    totalSupply = 100000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}