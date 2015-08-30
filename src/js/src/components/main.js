// Main Component

'use strict';

var template = require('./../templates/main')
var Sub      = require('./sub')

class MainComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = _.assign({}, props, {initNum: 1});
        this.components = {
            Sub: Sub
        };
    }
    render() {
        return template(_.assign({}, this, this.components, this.state, this.props));
    }
}

export default MainComponent;
