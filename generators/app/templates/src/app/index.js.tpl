import React, { Component } from 'react';
import { Helmet } from 'react-helmet';

class App extends Component {
  render() {
    return (
      <div>
        <Helmet
          titleTemplate='%s - <%= project %>'
          defaultTitle='<%= project %>'>
          <meta
            name='description'
            content='<%= description %>' />
        </Helmet>

        <div>
          <p>Welcome to <%= project %>! <span aria-label='dizzy' role='img'>💫</span></p>
        </div>
      </div>
    );
  }
}

export default App;
