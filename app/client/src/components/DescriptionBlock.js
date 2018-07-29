import React, { Component } from 'react';
import axios from 'axios';


class DescriptionBlock extends Component {
  constructor(props){
    super(props)
  }
  render() {
    return (
      <li style={{ fontSize: '12px', textAlign: 'left' }} className="single-experience">
        {this.props.description}
      </li>
    )
  }
}

export default DescriptionBlock;
