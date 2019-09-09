/**
 *Submitted for verification at Etherscan.io on 2019-08-29
*/

pragma solidity ^0.4.26;


contract JYM is ERC20Interface, Owned {
	using SafeMath for uint;

	string public symbol;
	string public name;
	uint8 public decimals;
	uint _totalSupply;
	bool _stopTrade;

	mapping(address => uint) balances;
	mapping(address => mapping(address => uint)) allowed;

	event Burn(address indexed burner, uint256 value);

	// ------------------------------------------------------------------------
	// Constructor
	// ------------------------------------------------------------------------
	constructor(address admin) Owned(admin) public {
		symbol = "JYM";
		name = "JungyuMin";
		decimals = 18;
		_totalSupply = 1000000 * 10**uint(decimals);
		_stopTrade = false;
		balances[owner] = _totalSupply;
		emit Transfer(address(0), owner, _totalSupply);
	}
