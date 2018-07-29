import React, { Component } from 'react';
import axios from 'axios';
import ExperienceDescriptionsContainer from '../components/ExperienceDescriptionsContainer';


class ExperienceBlock extends Component {
  constructor(props){
    super(props)
    this.state = {
      facade: {
        experience: {},
        descriptions: []
      }
    }
  }

  componentDidMount() {
    var exp_id = this.props.experienceId;
    axios.get('api/v1/experiences/' + exp_id)
    .then(response => {
      console.log(response)
      this.setState({
        facade: response.data
      })
    }).catch(error => console.log(error))
  }

  render() {
    return (
      <div
        className="single-experience"
        style={{ border: '1px solid black', margin: '10px 0' }}
      >
        <h4>{this.state.facade.experience.label}</h4>
        <div>{this.state.facade.experience.location}</div>
        <em>{this.state.facade.experience.position}</em>
        <br />
        <ExperienceDescriptionsContainer
          className="experience-descriptions"
          key={this.state.facade.experience.id}
          descriptions={this.state.facade.descriptions}
        />
      </div>
    )
  }
}

export default ExperienceBlock;
