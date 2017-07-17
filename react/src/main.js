import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';

$(function() {
  let app = document.getElementById( 'app' );
  if (app) {
  ReactDOM.render(
      <App />,
      app
    );
  };
});
