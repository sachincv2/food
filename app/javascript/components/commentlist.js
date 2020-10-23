import React from "react"
import PropTypes from "prop-types"
class CommentList extends React.Component {
    constructor(props) {
        super(props)
    }
    render() {
        return (

            <div className="mt-3 comment-list" style={{ display: "inline-flex" }}>
                <i className="far fa-comment-alt mt-1"></i>
                <div className="ml-3">
                    <div >{this.props.data.comment}</div>
                    <div className="mb-2" ><h5><a className="user-anchor">{this.props.data.user}</a></h5></div>
                </div>
            </div>
        );
    }
}
export default CommentList