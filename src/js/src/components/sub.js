// Sub Component

var template     = require('./../templates/sub')

class SubComponent extends React.Component {
    constructor(props) {
        super(props);
    }
    render() {
        return template(_.assign({}, this, this.props));
    }
}

export default SubComponent;
