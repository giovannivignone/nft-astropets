pragma solidity 0.8.4;

import '/Users/giovannivignone/VS Code Projects/nft-astropets/node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '/Users/giovannivignone/VS Code Projects/nft-astropets/node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol';
import '/Users/giovannivignone/VS Code Projects/nft-astropets/node_modules/@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol';

contract Astropets is ERC721{
    uint public PetCounter;
    address public contract_creator;
    mapping(uint256 => string) private _tokenURIs;
    uint256[] private prices;
    

    constructor() ERC721 ("AstroPets","APs") {
        PetCounter = 0;
        contract_creator = msg.sender;
    }

    function createastopet(string memory tokenURI, uint256 price) public returns (uint256){
        uint256 PetID = PetCounter;
        _safeMint(msg.sender, PetID);
        _setTokenURI(PetID, tokenURI);
        prices[PetID] = price;
        PetCounter += 1;
        return PetID;
    }

    function lastminted() public view returns (uint){
        return PetCounter-1;
    }

    function _setTokenURI(uint256 tokenId, string memory uri) internal {
        require(_exists(tokenId), "ERC721Metadata: URI set of nonexistent token");
        //require(ownerOf(tokenId) == msg.sender, "You may not change this tokenURI");
        //The above require may need to be changed and rely on server side data to be authentic
        _tokenURIs[tokenId] = uri;
    }
}