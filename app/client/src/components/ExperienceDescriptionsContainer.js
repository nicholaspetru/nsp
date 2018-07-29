import React, { Component } from 'react';
import axios from 'axios';
import DescriptionBlock from '../components/DescriptionBlock';

class ExperienceDescriptionsContainer extends Component {
  constructor(props){
    super(props)
  }
  render() {
    return (
      <ul className="descriptions-container">
        {this.props.descriptions.map( description => {
          return (
            <DescriptionBlock description={description.text} />
          )
        })}
      </ul>
    )
  }
}

export default ExperienceDescriptionsContainer;
