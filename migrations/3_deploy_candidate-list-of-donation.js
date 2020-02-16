var CandidateListOfDonation = artifacts.require("CandidateListOfDonation");

const _testERC20Ropsten = '0x70459e550254b9d3520a56ee95b78ee4f2dbd846'     
const _testERC721Ropsten = '0x07d799252cf13c01f602779b4dce24f4e5b08bbd'

module.exports = function(deployer) {
  deployer.deploy(CandidateListOfDonation, _testERC20Ropsten, _testERC721Ropsten);
};
