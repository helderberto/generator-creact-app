import React from 'react';
import ReactDOM from 'react-dom';
import App from './app';

import './stylesheets/main.scss';

const render = (Component) => {
  ReactDOM.render(
    <Component />,
    document.querySelector('[data-js="app"]'),
  );
};

render(App);

// Hot reloading
if (module.hot) {
  module.hot.accept('./app', () => {
    const NextApp = require('./app').default;
    render(NextApp);
  });
}
