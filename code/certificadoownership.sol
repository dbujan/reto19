pragma solidity ^0.4.25;

import "./certificadohelper.sol";
import "./erc721.sol";


contract CertificadoOwnership is CertificadoHelper, ERC721{
    mapping (uint => address) chequeApprovals;

 function balanceOf(address _owner) external view returns (uint256) {
    return ownerChequeCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external view returns (address) {
    return chequeToOwner[_tokenId];
  }


    function _transfer(address _from, address  _to, uint256 _tokenId)private{
          
           ownerChequeCount[_from]--;
           ownerChequeCount[_to] ++;
           chequeToOwner[_tokenId] = _to;
        emit Transfer(_from, _to, _tokenId);

    }


    function transferFrom(address _from, address _to, uint256 _tokenId) external payable onlyOwnerOf(_tokenId) 
    {
    require (chequeApprovals[_tokenId] == msg.sender);
    _transfer(_from, _to, _tokenId);
    }


    function approve(address _approved, uint256 _tokenId) external payable onlyOwnerOf(_tokenId) {
    chequeApprovals[_tokenId] = _approved;
    emit Approval(msg.sender, _approved, _tokenId);
  }



    
}

