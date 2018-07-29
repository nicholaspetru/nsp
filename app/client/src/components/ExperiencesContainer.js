import React, { Component } from 'react';
import axios from 'axios';
import ExperienceBlock from '../components/ExperienceBlock';

class ExperiencesContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      experience_ids: []
    }
  }
  componentDidMount() {
    axios.get('api/v1/experiences')
    .then(response => {
      console.log(response)
      this.setState({
        experience_ids: response.data
      })
    }).catch(error => console.log(error))
  }
  render() {
    return (
      <div className="experiences-container" style={{ maxWidth: '680px', margin: '0 auto' }}>
        {this.state.experience_ids.map( experienceId => {
          return (
            <ExperienceBlock experienceId={experienceId} key={experienceId} />
          )
        })}
      </div>
    )
  }
}

export default ExperiencesContainer;
