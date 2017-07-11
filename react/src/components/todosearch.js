import React, { Component } from 'react';

class TodoSearch extends Component{

  handleSearch(){
    let showCompleted = this.refs.showCompleted.checked;
    let searchText = this.refs.searchText.value;

    this.props.onSearch(showCompleted, searchText);
  }
  render() {

    return(
      <div>
        <div>
          <input
            type="search"
            ref="searchText"
            placeholder="Search Goals"
            onChange={this.handleSearch}
          />
          <div>
            <label>
              <input
                type="checkbox"
                ref="showCompleted"
                onChange={this.handleSearch}
              />
              Show completed Goals!
            </label>
          </div>
        </div>
      </div>

    )
  }
};

export default TodoSearch;
