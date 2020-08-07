const MetaToken = artifacts.require("MetaToken");

contract('MetaToken', async (accounts) => {
    let instance = await MetaToken.deployed();

    it('sets the total supply on deloyment', () => {
        let totalSupply = instance.totalSupply()
        assert.equal(totalSupply, 1000000, 'sets the totalsupply to 1000000')
    })
})