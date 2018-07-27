// Adjust as needed

import React from 'react';
import ReactDom from 'react-dom';
import BasicInfo from './components/basicInfo.jsx';
import Hours from './components/hours.jsx';
import Recommendations from './recommendations.jsx';
import MoreInfo from './moreInfo.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'in-n-out',
      price: 0,
      average_rating: 0,
      Mon: '',
      Tue: '',
      Wed: '',
      Thu: '',
      Fri: '',
      Sat: '',
      reservations: false,
      delivery: false,
      takeOut: false,
      credit: false,
      applePay: false,
      googlePay: false,
      bitcoin: false,
      goodFor: 'nothing',
      parking: 'none',
      bike: false,
      wheelchair: false,
      kids: false,
      groups: false,
      attire: 'casual',
      ambience: 'casual',
      noise: 'loud',
      alcohol: 'beer',
      outdoor: false,
      wifi: false,
      tv: false,
      dogs: false,
      waiter: false,
      caters: false,
      bathrooms: false,
    };
  }
  
  componentDidMount() {
    $.ajax({
      url: `http://localhost:3047/biz/${this.state.name}/info`,
      method: 'GET',
      dataType: 'json',
    }).then((response) => {
        this.setState({
          average_rating: response.average_rating,
          price: response.price
        });
    }, (err) => {
      console.log(err);
      return err;
    });
    $.ajax({
      url: `http://localhost:3047/biz/${this.state.name}/hours`,
      method: 'GET',
      dataType: 'json',
    }).then((response) => {
        this.setState({
          Mon: response.Mon,
          Tue: response.Tue,
          Wed: response.Wed,
          Thu: response.Thu,
          Fri: response.Fri,
          Sat: response.Sat
        });
    }, (err) => {
      console.log(err);
      return err;
    });  
    $.ajax({
      url: `http://localhost:3047/biz/${this.state.name}/more`,
      method: 'GET',
      dataType: 'json',
    }).then((response) => {
        this.setState({
          reservations: response.reservations,
          delivery: response.delivery,
          takeOut: response.takeOut,
          credit: response.credit,
          applePay: response.applePay,
          googlePay: response.googlePay,
          bitcoin: response.bitcoin,
          goodFor: response.goodFor,
          parking: response.parking,
          bike: response.bike,
          wheelchair: response.wheelchair,
          kids: response.kids,
          groups: response.groups,
          attire: response.attire,
          ambience: response.ambience,
          noise: response.noise,
          alcohol: response.alcohol,
          outdoor: response.outdoor,
          wifi: response.wifi,
          tv: response.tv,
          dogs: response.dogs,
          waiter: response.waiter,
          caters: response.caters,
          bathrooms: response.bathrooms,
        });
    }, (err) => {
      console.log(err);
      return err;
    });  
  }

  render() {
    return (
      <div className="top-container">
        <div className="top-content-container">
          <div className="content-header-container">
            <BasicInfo/>
            <Hours/>
          </div>
          <div className="content-body-container">
            <Recommendations />
            <MoreInfo />
          </div>
        </div>
      </div>
    );
  }
}




ReactDom.render(<App />, document.getElementById('sidebar'));