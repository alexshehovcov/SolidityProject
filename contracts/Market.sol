// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.7.0;
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import './Project.sol';

contract Market is ERC20 {

	mapping(string => Project) Projects;
	string[] ProjectsList;

	function createProject (
		string memory name,
		string memory description,
		uint _price,
		uint256 _shares
	)

	public returns(Project) {
		require(address(Projects[name]) == address(0), 'Creating Project: Please, enter name of your project');
		Project newProject = new Project (msg.sender, name, description, _price, _shares);
		Projects[name] = newProject;
		ProjectsList.push(name);
		return newProject;
	}

	


}