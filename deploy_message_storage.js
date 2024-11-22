async function main() {
    const MessageStorage = await ethers.getContractFactory("MessageStorage");
    const contract = await MessageStorage.deploy();
    console.log("Contract deployed to:", contract.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
