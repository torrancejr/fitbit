import React, { Component } from 'react';
import TodoList from './todolist';
import AddTodo from './addtodo';
import TodoSearch from './todosearch';
const uuidv4 = require('uuid/v4');

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showCompleted: false,
      searchText: '',
      todos: [
          {
          uuid: uuidv4(),
          text: 'No Carbs',
          completed: true
        },  {
          uuid: uuidv4(),
          text: 'Run a 5k',
          completed: false
        },
        {
          uuid: uuidv4(),
          text: 'Lose 5 lbs',
          completed: true
        }
      ]
    };
    this.handleAddTodo = this.handleAddTodo.bind(this);
    this.handleToggle = this.handleToggle.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
    this.updateTodos = this.updateTodos.bind(this);
  }

  updateTodos(event) {
  event.preventDefault();
  this.setState({ todo: event.target.value });
}

  handleAddTodo(text) {
    $.ajax({
      url: '/api/v1/todos',
      method: 'POST',
      data: {
        uuid: this.state.uuidv4(),
        text: this.state.text,
        completed: false
      },
      success: function(data, success, xhr) {
        console.log(data)
      }
    })
  }


  handleToggle(uuid) {
    let todos = this.state.todos
    let updatesTodos = todos.map(todo => {
        if (todo.uuid === uuid) {
          todo.completed = !todo.completed;
        }
      return todo;
    });
    this.setState({todos: updatesTodos});
; }

  handleSearch(showCompleted, searchText) {
    this.setState({
      showCompleted,
      searchText: searchText.toLowerCase()
    });
  }

  retrieveTodos() {
  $.ajax({
    url: '/api/v1/todos',
    contentType: 'application/json'
  })
  .done(data => {
    this.setState({ todos: data.reverse() });
  });
}

  componentDidMount() {
    this.retrieveTodos();
  }
  render() {
    let todos = this.state;

    return (
      <div>
        <TodoSearch onSearch={this.handleSearch} />
        <TodoList todos={todos} onToggle={this.handleToggle}/>
        <AddTodo onAddTodo={this.handleAddTodo} />
      </div>
    )
  }
};

export default App;
