// import React, { Component } from 'react';
//
//
// class UserInput extends React.Component {
//   constructor(props){
//     super(props);
//     this.state = {
//       username: ''
//     }
//     this.handleChange = this.handleChange.bind(this);
//
//   }
//   handleSubmit(e) {
//     event.preventDefault();
//     this.props.onSubmit(
//       this.props.id
//     )
//   }
//
//   handleChange(e) {
//     let value = event.target.value;
//
//     this.setState(function () {
//       return {
//         username: value
//       }
//     })
//   }
//
//   render() {
//     return (
//       <form className='column' onSubmit={this.handleSubmit}>
//         <label className='header' htmlFor='username'>
//           {this.props.label}
//         </label>
//         <input
//         id='username'
//         placeholder='username'
//         type='text'
//         value={this.state.username}
//         onChange={this.handleChange}
//       />
//       <button
//         className='button'
//         type='submit'
//         disabled={!this.state.username}>submit
//       </button>
//       </form>
//
//     )
//   }
// }
//
// export default UserInput;
