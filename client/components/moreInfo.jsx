import React from 'react';
import ReactDom from 'react-dom';
import $ from 'jquery';

/*
class moreInfo extends React.Component {
  constructor(props) {
    super(props);
    // this.state = {};
    // this.(function) = this.(function).bind(this)
  }
  render() {
    return ();
  }
}
*/

var stringify = (val) => {
  return (val ? "Yes" : "No");
};

const MoreInfo = (props) => (
  <div className="more-info">
    <ul>
      <li>Takes Reservations: {stringify(props.reservations)}</li>
      <li>Delivery: {stringify(props.delivery)}</li>
      <li>Take Out: {stringify(props.takeOut)}</li>
      <li>Accepts Credit Card: {stringify(props.credit)}</li>
      <li>Accepts Apple Pay: {stringify(props.applePay)}</li>
      <li>Accepts Google Pay: {stringify(props.googlePay)}</li>
      <li>Accepts Bitcoin: {stringify(props.bitcoin)}</li>
      <li>Good for: {props.goodFor}</li>
      <li>Parking: {props.parking}</li>
      <li>Bike Friendly: {stringify(props.bike)}</li>
      <li>Wheelchair Accessible: {stringify(props.wheelchair)}</li>
      <li>Child Friendly: {stringify(props.kids)}</li>
      <li>Group Friendly: {stringify(props.groups)}</li>
      <li>Attire: {props.attire}</li>
      <li>Ambience: {props.ambience}</li>
      <li>Noise Level: {props.noise}</li>
      <li>Alcohol Served: {props.alcohol}</li>
      <li>Outdoor Seating: {stringify(props.outdoor)}</li>
      <li>Wifi: {stringify(props.wifi)}</li>
      <li>TV: {stringify(props.tv)}</li>
      <li>Dog Friendly: {stringify(props.dogs)}</li>
      <li>Waiter Service: {stringify(props.waiter)}</li>
      <li>Catering: {stringify(props.caters)}</li>
      <li>Gender-Neutral Bathrooms: {stringify(props.bathrooms)}</li>
    </ul>  
  </div>
);

export default MoreInfo;
