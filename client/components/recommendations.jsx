import React from 'react';
import ReactDom from 'react-dom';
import $ from 'jquery';

class Recommendations extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'in-n-out', // temporary
      price: props.price,
      rating: props.average_rating,
      lat: props.lat,
      lng: props.lng,
      data: {}
    };
    // this.(function) = this.(function).bind(this)
  }
  
  // function to search for all restaurants with similar parameters as in this.state
  componentDidMount() {
    $.ajax({
      url: `http://localhost:3047/biz/${this.state.price}-${this.state.rating}-${this.state.lat}-${this.state.lng}`,
      data: {
        price: props.price,
        rating: props.average_rating,
        lat: props.lat,
        lng: props.lng        
      },
      method: 'GET',
      dataType: 'json',
    }).then((response) => {
        this.setState({
          data: response.name // should return an object with the names of all recommendations
        });
    }, (err) => {
      console.log(err);
      return err;
    });     
  }
  
  // still need to dynamically parse the names from this.state.data into <li> elements
  render() {
    return (
      <div className='rcmd-info'>
        <ul>
          <li>Placeholder</li>
        </ul>
      </div>      
    );
  }
}

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
/*
const Recommendations = (props) => {
  <div className='rcmd-info'>
    <ul>
      <li>Placeholder</li>
    </ul>
  </div>
};
*/
export default Recommendations;
