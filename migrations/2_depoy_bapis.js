const Bapis = artifacts.require('Bapis')

module.exports = async function (deployer, network, accounts) {
    // Deploy Mock Bapis
    await deployer.deploy(Bapis)
};
