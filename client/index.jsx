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