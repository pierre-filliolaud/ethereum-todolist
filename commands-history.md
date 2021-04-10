npm install -g truffle
truffle init
touch package.json
npm install
touch TodoList.sol
truffle compile
truffle migrate

truffle console
todoList = await TodoList.deployed()
todoList
todoList.address
todoList.taskCount()
taskCount = await todoList.taskCount()
taskCount.toNumber()