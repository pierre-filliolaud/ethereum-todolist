// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
        uint paidAmount;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool completed,
        uint paidAmount
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    constructor() public {
        createTask("Check out task");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false, 0);
        emit TaskCreated(taskCount, _content, false, 0);
    }

    // All ethers sent to payable functions are owned by contract.
    function createPaidTask(string memory _content) public payable {
        taskCount ++;
        uint amount = msg.value;
        tasks[taskCount] = Task(taskCount, _content, false, amount);
        emit TaskCreated(taskCount, _content, false, amount);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}