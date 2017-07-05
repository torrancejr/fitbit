import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import UsersCollection from './components/UsersCollection';


$(function() {
  let app = document.getElementById( 'app' );
  if (app) {
  ReactDOM.render(
      <UserCollection />,
      app
    );
  };
});
