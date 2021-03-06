pragma solidity ^0.4.22;

import "./StandardToken.sol";
import "./Freezeable.sol";

contract FreezeableToken is StandardToken, Freezeable {
    // public variables

    // internal variables

    // events

    // public functions
    function transfer(address to, uint256 value) public whenNotFreezed returns (bool) {
      return super.transfer(to, value);
    }

    function transferFrom(address from, address to, uint256 value) public whenNotFreezed returns (bool) {
      return super.transferFrom(from, to, value);
    }

    function approve(address agent, uint256 value) public whenNotFreezed returns (bool) {
      return super.approve(agent, value);
    }

    function increaseApproval(address agent, uint value) public whenNotFreezed returns (bool success) {
      return super.increaseApproval(agent, value);
    }

    function decreaseApproval(address agent, uint value) public whenNotFreezed returns (bool success) {
      return super.decreaseApproval(agent, value);
    }

    // internal functions
}
