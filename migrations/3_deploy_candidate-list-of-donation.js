var CandidateListOfDonation = artifacts.require("CandidateListOfDonation");


module.exports = async (deployer) => {
  await deployer.deploy(CandidateListOfDonation);
};
