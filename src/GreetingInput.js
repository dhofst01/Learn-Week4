import React, { Component } from 'react';

class GreetingInput extends Component {
  handleChange(e){
    this.props.updateGreeting(e.target.value)
    this.props.badGreeting(e.target.value)
  }

  render() {
    return (
      <input value={this.props.greeting} onChange={this.handleChange.bind(this)} value={this.props.bedgreeting} onChange={this.handleChange.bind(this)} />
    );
  }
}

export default GreetingInput;
