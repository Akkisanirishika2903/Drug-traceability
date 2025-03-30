const DrugTraceability = artifacts.require("DrugTraceability");

module.exports = function (deployer) {
  deployer.deploy(DrugTraceability)
    .then(() => console.log("✅ Smart contract deployed successfully!"))
    .catch((error) => console.error("❌ Deployment failed:", error));
};
