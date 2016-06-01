var Main = React.createClass({
  render() {
    return (
      <div>
  <div class="anton">
    <div class="row center opaque white-text">
      <div class="col s12 m5 l5 offset-m6 offset-l6">
        <h1 class="titillium">PAINCAVER</h1>
        <a href="/auth/strava" className="btn"> Login with Strava</a>
        <p id='home-description'>Calculate your trail's difficulty rating using:</p>
        <div class="row center white-text">
          <div class="col s12 m4 l4">
            <i class="medium material-icons">navigation</i>
            <h5>elevation</h5>
          </div>
          <div class="col s12 m4 l4">
            <i class="medium material-icons">trending_up</i>
             <h5>heartrate</h5>
          </div>
          <div class="col s12 m4 l4">
            <i class="medium material-icons">query_builder</i>
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