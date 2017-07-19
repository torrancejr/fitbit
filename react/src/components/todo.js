import React, { Component } from 'react';

class Todo extends Component{

  render() {
    let {uuid, text, completed} = this.props;
    return(
      <div onClick={() => {
        this.props.onToggle(uuid);
      }}>
        <input type="checkbox" checked={completed} />
        {text}
      </div>

    )
  }
};

export default Todo;
