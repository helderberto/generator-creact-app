import React, { Component } from 'react';

class App extends Component {
  render() {
    return (
      <div>
        <h1>Welcome to the <%= project %> App! <span aria-label='dizzy' role='img'>💫</span></h1>

        <p><%= description %></p>
      </div>
    );
  }
}

export default App;
