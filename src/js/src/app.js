'use strict'

var MainComponent = require('./components/main');
var React = require('react');

class App {
    constructor() {
        React.render(<MainComponent/>, document.getElementById('react'));
    }
}

export default App;
