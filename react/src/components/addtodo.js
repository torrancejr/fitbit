import React, { Component } from 'react';

const AddTodo = React.createClass({
  handleSubmit(e) {
    e.preventDefault();
    const todoText = this.refs.todoText.value;

    if (todoText.length > 0) {
    this.refs.todoText.value = '';
    this.props.onAddTodo(todoText);
    } else {
      this.refs.todoText.focus();
    }
  },

  render() {

    return(
      <div>
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            ref="todoText"
            placeholder="Goal"
          />
          <button className="button expanded">Add Goal</button>
        </form>
      </div>

    );
  }
});

export default AddTodo;
