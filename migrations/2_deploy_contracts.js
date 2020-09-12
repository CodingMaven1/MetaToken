const MetaToken = artifacts.require("MetaToken");
const MetaTokenSale = artifacts.require("MetaTokenSale");

module.exports = function(deployer) {
  deployer.deploy(MetaToken, 1000000).then(function() {
    return deployer.deploy(MetaTokenSale, MetaToken.address, 10000000000000000);
  })
};
