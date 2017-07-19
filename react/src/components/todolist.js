import React, { Component } from 'react';
import Todo from './todo';

class TodoList extends Component{

  render() {
    let todos = this.props;
    let renderTodos = todos.map(todo => {
        return (
          <Todo
            key={todo.uuid} {...todo}
            onToggle={this.props.onToggle}
          />
        );
      });

    return(
      <div>
        {renderTodos}
      </div>

    )
  }
};

export default TodoList;
