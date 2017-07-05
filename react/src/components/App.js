// import React from 'react';
//
// class App extends React.Component{
//   constructor (props){
//     super(props);
//       }
//
//     getData(){
//       JSON.parse('{"lifetime":[{"total":{"activeScore":-1,"caloriesOut":-1,"distance":0,"steps":0},"tracker":{"activeScore":-1,"caloriesOut":-1,"distance":0,"steps":0}]}');
//       return tmpData["lifetime"];
//     }
//     getData() {
//     fetch('/src/constants/data')
//       .then(response => {
//         if (response.ok) {
//           return response;
//         } else {
//           let errorMessage = `${response.status} ($response.statusText)`,
//             error = new Error(errorMessage);
//           throw(error);
//         }
//       })
//       .then(response => response.json())
//       .then(body => {
//         this.setState({ venues: body["venues"] })
//       })
//       .catch(error => console.error(`Error in fetch ${error.message}`));
//     }
//
//     componentDidMount(){
//       this.getData();
//     }
//
//     render(){
//       debugger
//
//
//
//       return(
//         <div>
//           <h1>{this.props.data}</h1>
//         </div>
//       )
//     }
// }
//
// export default App;
