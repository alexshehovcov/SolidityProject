// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.7.0;
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Project is ERC20 {	
	address owner;
	string memory name;
	string memory description; 
	uint price; 
	uint256 shares; 

	constructor (
		address _owner,
		string _name,
		string _description,
		uint _price,
		uint256 _shares, 
	) 
	public 
	{
		owner = _owner;
		name = _name;
		description = _description;
		price = _price;
		shares = _shares;
		_mint(msg.sender, _shares)
	} 

	function getProjectInfo() public view returns (string memory) {
		return name, description
	}

	function getPrice() public view return (uint) {
		return price
	}

	function getShares() public view returns (uint256) {
		return shares
	}

}