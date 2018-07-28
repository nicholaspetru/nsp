import React, { Component } from 'react';
import axios from 'axios';

class ExperiencesContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      experiences: []
      }
  }
  componentDidMount() {
    axios.get('http://localhost:3001/api/v1/experiences.json')
    .then(response => {
      console.log(response)
      this.setState({
        experiences: response.data
      })
    }).catch(error => console.log(error))
  }
  render() {
    return (
      <div className="experiences-container">
        {this.state.experiences.map( experience => {
          return (
            <div className="single-experience" key={experience.id}>
              <h4>{experience.label}</h4>
              <div>{experience.location}</div>
              <div>{experience.position}</div>
            </div>
          )
        })}
      </div>
    )
  }
}

export default ExperiencesContainer;
