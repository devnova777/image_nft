const Image = artifacts.require('./Image.sol');

contract('Image', (accounts)=>{

    let contract

    before(async()=>{
        contract = await Image.deployed()
    })

describe('deployment', async() =>{
    it('Contract Address is valid', async() =>{
        const contractAddress = contract.address
        assert.notEqual(contractAddress, '', "Address is empty string");
        assert.notEqual(contractAddress,'0x0', "Address is empty address");
        assert.notEqual(contractAddress, null, "Address is null");
        assert.notEqual(contractAddress, undefined, "Address is undefined");
    })
})

    
    describe('minting', async() =>{
        it('New Image token is created', async() =>{

            //minting a new token of an Image
            const aToken = await contract.createNFT(14, 4, '0x0', 
            'ipfs://QmdMQcQYJ2L6tKpjEq9FMkCnmSrvQndZ71Y86n97fvaYVg');

            // how many tokens exist
            const totalSupply = await contract.getTotalSupply(); 
            assert.equal(totalSupply, 1);

            //this provides the Result -> from, to, id
            console.log(aToken.logs[0].args);

            const eventResult = aToken.logs[0].args;
            assert.equal(eventResult.id.toNumber(), 14, "NFT's id is correct");
            assert.equal(eventResult.from, 
                "0x0000000000000000000000000000000000000000", "from is correct");

            //Note: default account in Ganache used is 0th
            assert.equal(eventResult.to, accounts[0], "to is correct"); 
        })
    })
})