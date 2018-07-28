import React, { Component } from 'react';
import './App.css';
import ExperiencesContainer from './components/ExperiencesContainer';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Test!</h1>
        </header>
        <ExperiencesContainer />
      </div>
    );
  }
}

export default App;
