import React from 'react';
import ReactDom from 'react-dom';
import $ from 'jquery';

/*class recommendations extends React.Component {
  constructor(props) {
    super(props);
    // this.state = {};
    // this.(function) = this.(function).bind(this)
  }
  
  // componentDidMount?
  
  // function to get recommendations?
  
  render() {
    return (
      // html here        
    );
  }
}*/

/*

Recommendations should be based on several criteria:
Proximity (lat and lng within a certain range)
Food (same tags)
Pricing (similar cost)
Rating (similar ratings)

*/

/*

Need to refactor back to ES6 class?
Must pass in recommendations from props to state
Function to process the props data and generate an object with similar entries (componentDidMount?)
Function to attach links/ajax requests to each entry?

*/

const Recommendations = (props) => {
  <div className='rcmd-info'>
    <ul>
      <li>Placeholder</li>
    </ul>
  </div>
};

export default Recommendations;
