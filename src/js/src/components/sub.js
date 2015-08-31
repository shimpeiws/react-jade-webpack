// Sub Component

var template     = require('./../templates/sub')

class SubComponent extends React.Component {
    constructor(props) {
        super(props);
        this.props = props;
        this.handleClick = _.bind(this.handleClick, this);
    }
    render() {
        return template(_.assign({}, this, this.props));
    }
    handleClick() {
        this.props.handleEvent();
    }
}

export default SubComponent;
