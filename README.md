===== ETHEREUM TODO LIST =====

# Tutorial video link
```
https://youtu.be/coQ5dg8wM2o
```

# Setup
```
npm install -g truffle
npm i
rm -fr ./build
truffle compile
truffle migrate
npm run dev
```

# Metamask setup
Make sure to connect the account to metamask and metamask account to localhost server
![MetaMask setup](./docs/images/metamask-setup.png)

# Browser
Go to http://localhost:3000

# Check SmartContract balance
```
truffle console
todoList = await TodoList.deployed()
web3.eth.getBalance(todoList.address, console.log)
```