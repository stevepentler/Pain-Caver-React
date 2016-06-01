var HomePage = React.createClass({
  render() {
    return (
      <div>
        <div className="anton">
          <div className="row center opaque white-text">
            <div className="col s12 m5 l5 offset-m6 offset-l6">
              <h1 className="titillium">PAINCAVER</h1>
              <a href="/auth/strava" className="btn"> Login with Strava</a>
              <p id='home-description'>Calculate your trail's difficulty rating using:</p>
              <div className="row center white-text">
                <div className="col s12 m4 l4">
                  <i className="medium material-icons">navigation</i>
                  <h5>elevation</h5>
                </div>
                <div className="col s12 m4 l4">
                  <i className="medium material-icons">trending_up</i>
                   <h5>heartrate</h5>
                </div>
                <div className="col s12 m4 l4">
                  <i className="medium material-icons">query_builder</i>
                   <h5>duration</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
});