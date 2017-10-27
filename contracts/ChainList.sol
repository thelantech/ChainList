pragma solidity ^0.4.11;


contract ChainList {

    // State Variables
    address seller;
    string name;
    string description;
    uint256 price;

    //Events
    event sellArticleEvent(address indexed _seller,string _name, uint256 _price);


    //Sell an article
    function sellArticle(string _name, string _description, uint256 _price) public {
        seller = msg.sender;
        name = _name;
        description = _description;
        price = _price;
        sellArticleEvent(seller, name, price);
    }

    //Get an article
    function getArticle() public constant returns (
    address _seller,
    string _name,
    string _description,
    uint256 _price
    ){
        return (seller, name, description, price);
    }


}