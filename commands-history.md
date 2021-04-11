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


truffle migrate --reset
truffle console
todoList = await TodoList.deployed()
task = await todoList.tasks(1)
task
task.id.toNumber()
task.content


npm run dev

touch TodoList.test.js
truffle test
