import React from 'react';
import ReactDom from 'react-dom';
import $ from 'jquery'; // is this necessary?

/*

// Deprecated in favor of below
class hours extends React.Component {
  constructor(props) {
    super(props);
    // this.state = {};
    // this.(function) = this.(function).bind(this)
  }
  
  render() {
    return (
      // html here
      <ul>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>              
    );
  }
}
*/

const Hours = (props) => (
  <div className="hours-info">
    <ul>
      <li>Monday: {props.Mon}</li>
      <li>Tuesday: {props.Tue}</li>
      <li>Wednesday: {props.Wed}</li>
      <li>Thursday: {props.Thu}</li>
      <li>Friday: {props.Fri}</li>
      <li>Saturday: {props.Sat}</li>
      <li>Sunday/holidays: Closed</li>
    </ul>  
  </div>
);

export default Hours;
