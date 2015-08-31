// Main Component

'use strict';

var template = require('./../templates/main')
var Sub      = require('./sub')

class MainComponent extends React.Component {
    constructor(props) {
        super(props);
        this.state = _.assign({}, props, {count: 1});
        this.components = {
            Sub: Sub
        };
        this.handleFromSub = _.bind(this.handleFromSub, this);
    }
    render() {
        return template(_.assign({}, this, this.components, this.state, this.props));
    }
    handleFromSub() {
        this.setState({count: this.state.count + 1})
    }
}

export default MainComponent;
