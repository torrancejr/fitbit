import React, { Component } from 'react';

var AddTodo = React.createClass({
  handleSubmit: function(e) {
    e.preventDefault();
    var todoText = this.refs.todoText.value;

    if (todoText.length > 0) {
    this.refs.todoText.value = '';
    this.props.onAddTodo(todoText);
    } else {
      this.refs.todoText.focus();
    }
  },

  render: function () {

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

module.exports = AddTodo;
