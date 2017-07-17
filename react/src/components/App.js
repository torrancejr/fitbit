import React, { Component } from 'react';
import TodoList from './todolist';
import AddTodo from './addtodo';
import TodoSearch from './todosearch';
const uuidv5 = require('uuid/v4');

const App = React.createClass ({
  getInitialState() {
    return {
      showCompleted: false,
      searchText: '',
      todos: [
          {
          id: uuid(),
          text: 'No Carbs',
          completed: true
        },  {
          id: uuid(),
          text: 'Run a 5k',
          completed: false
        },
        {
          id: uuid(),
          text: 'Lose 5 lbs',
          completed: true
        }
      ]
    };
  },

  handleAddTodo(text) {
    this.setState({
      todos: [
        ...this.state.todos,
        {
          id: uuid(),
          text: text,
          completed: false
        }
      ]
    });
  },

  handleToggle: function (id) {
    let updatesTodos = this.state.todos.map((todo) => {
        if (todo.id === id) {
          todo.completed = !todo.completed;
        }

      return todo;
    });
    this.setState({todos: updatesTodos});
; },

  handleSearch(showCompleted, searchText) {
    this.setState({
      showCompleted,
      searchText: searchText.toLowerCase()
    });
  },
  render() {
    const {todos} = this.state;

    return (
      <div>
        <TodoSearch onSearch={this.handleSearch} />
        <TodoList todos={todos} onToggle={this.handleToggle}/>
        <AddTodo onAddTodo={this.handleAddTodo} />
      </div>
    )
  }
});

export default App;
