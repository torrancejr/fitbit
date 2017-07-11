import React, { Component } from 'react';
import TodoList from './todolist';
import AddTodo from './addtodo';
import TodoSearch from './todosearch';
import uuid from 'node-uuid';

const App = React.createClass ({
  getInitialState() {
    return {
      showCompleted: false,
      searchText: '',
      todos: [
          {
          id: uuid(),
          text: 'No Carbs'
        },  {
          id: uuid(),
          text: 'Run a 5k'
        },
        {
          id: uuid(),
          text: 'Lose 5 lbs'
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
          text
        }
      ]
    });
  },

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
        <TodoList todos={todos} />
        <AddTodo onAddTodo={this.handleAddTodo} />
      </div>
    )
  }
});

export default App;
