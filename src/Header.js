import React, { Component } from 'react';

class Header extends Component {
  render() {
    return (
      <p><u><b>Good Robot</b></u> <br/>
      I hear you saying {this.props.greeting}. Is that correct?
      <br/><br/><u><b>Bad Robot</b></u> <br/> 
      I hear you saying {this.props.badgreeting}. Is that correct? <br/><br/>

      <u><b>Kaynebot 5000</b></u> <br/>
      George Bush hates {this.props.greeting}.



      </p>
    );
  }
}

export default Header;
