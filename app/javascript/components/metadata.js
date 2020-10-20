import React from "react"
import PropTypes from "prop-types"
class MetaData extends React.Component {
    constructor(props) {
        super(props);
    }
    //
    render() {
        return (

            <div className="row metadata mt-2">
                <div className="col mb-0">
                    <p className="left-metadata">
                        <i className={this.props.icon}></i>
                        <span className="space"> {this.props.heading}</span>
                    </p>
                </div>
                <div className="col mb-0 right-metadata">
                    {this.props.data}
                </div>
            </div>
        );
    }
}
export default MetaData