import React, { Component } from 'react';
import TodoList from './todolist';
import AddTodo from './addtodo';
import TodoSearch from './todosearch';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showCompleted: false,
      searchText: '',
      todos: [
          {
          id:1,
          text: 'No Carbs'
        },  {
          id:2,
          text: 'Run a 5k'
        },
        {
          id:3,
          text: 'Lose 5 lbs'
        }
      ]
    }
  }

  handleAddTodofunction(){
    alert('new todo:' + text);
  }

  handleSearch(showCompleted, searchText) {
    this.setState({
      showCompleted: showCompleted,
      searchText: searchText.toLowerCase()
    })

  }

  render() {
    let {todos} = this.state;
    return (
      <div>
        <TodoSearch onSearch={this.handleSearch} />
        <TodoList todos={todos} />
        <AddTodo onAddTdo={this.handleAddTodofunction} />
      </div>
    );
  }
};
export default App;
