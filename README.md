REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.

### Demo
If you learn by watching videos, check out this screencast by [@me](https://github.com/Nareshchoudhary02) to understand trasaction :

<a title="Smart Money Deposit and Withdrawals" href="https://youtu.be/V69xVAKBNlI">
  <img src="https://cdn.discordapp.com/attachments/1071312646562914396/1072579693921976392/ytThumnail.png" width="100%" height="100%">
</a>

## 🤓 Author 
<table>
  <tr>
  <td align="center"><a href="https://github.com/Nareshchoudhary02"><img src="https://i.ibb.co/nR1k4dZ/Myself-with-indian-flag.jpg" width="200px" alt="Myself"/><br /><sub><b>Naresh Choudhary</b></sub></a><br /><a href="https://github.com/Nareshchoudhary02" title="Code">💻</a></td>
  </tr>
</table>

***
Feel free to star ⭐ this repository if you like what you see 😉.
