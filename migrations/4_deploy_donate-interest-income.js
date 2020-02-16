var DonateInterestIncome = artifacts.require("DonateInterestIncome");

const _depositAddress = '0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee';  

module.exports = async (deployer) => {
  await deployer.deploy(DonateInterestIncome, _depositAddress);
};
