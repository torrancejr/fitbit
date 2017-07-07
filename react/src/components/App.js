// import React, { Component } from 'react';
// import UserInput from './UserInput';
//
//
// class App extends React.Component {
// 	constructor(props) {
//     	super(props);
//       this.state = {
//         userOne:'',
//         userTwo:''
//     }
//
//       this.handleSubmit = this.handleSubmit.bind(this);
//   }
//
//   handleSubmit(id) {
//     this.setState(function () {
//       let newState = {};
//       newState[id +'Name'] = username;
//       return newState;
//     });
//   }
//
//
//
//   render() {
//     let userOne = this.state.userOne;
//     let userTwo = this.state.userTwo;
//
//     return (
//       <div>
//         <div className='row'>
//           {!userOne &&
//           <UserInput
//           id='userOne'
//           onSubmit={this.handleSubmit}
//           />}
//           {!userTwo &&
//           <UserInput
//           id='userTwo'
//           onSubmit={this.handleSubmit}
//           />}
//         </div>
//       </div>
//     )
//   }
// }
//
//  export default App;
