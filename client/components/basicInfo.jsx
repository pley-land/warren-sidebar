import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

class BasicInfo extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      // currentDay: "Mon",
      currentHours: "2300 - 0100"
      open: true,
      price: props.price,
      rating: props.average_rating
    };
    this.getToday = this.getToday.bind(this);
    this.getRange = this.getPrice.bind(this);
    this.getRating = this.getRating.bind(this);
    // this.getData = this.getData.bind(this);
  }
  
  // getCurrentDay() 
  getToday() {
    var date = new Date();
    // console.log(date);
    // var day = date.getDay();
    // console.log(day);
    this.setState({
      currentHours: props[date.getDay()]
    });
    // Implement functionality for finding if open right now
    // if day = Sun, then closed
  }
  
  // getPriceRange()
  getRange() {
    // sets this.state.range based on restaurants.price
    if (this.state.price <= 1) {
      return "Under $10";
    } else if (this.state.price === 2) {
      return "Under $20";
    } else if (this.state.price === 3) {
      return "Under $30";
    } else {
      return "Over $40";
    }
  }
  
  /* 
  getRating() {
    // sets this.state.rating based on restaurants.average_rating
    // unnecessary?
  }*/
  
  // function(s) to get basic info from the restaurants table
  
  render() {
    return (
      // html here
      <div className="basic-info">
        <div>
          <p>Today {this.state.currentHours}</p>
          // today's hours + this.state.currentDay
          // props.
        </div>
        <div>
          <p>Price range {this.getRange()}</p>
        </div>
        /*<div>
          // this.state.rating
          // props.average_rating
        </div>*/
      </div>
    );
  }
}

/*
Organization:

Today: (compare date from Date() with the matching entry in hours)
(Skip full menu)
Price range: (set based on the value of restaurants.price)
Health score: (set based on restaurants.average_rating)


*/

export default BasicInfo;