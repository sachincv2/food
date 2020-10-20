import React from "react"
import PropTypes from "prop-types"
class CommentList extends React.Component {
    constructor(props) {
        super(props)
    }
    render() {
        return (
            this.props.data.map((i) =>
                <div className="mt-3 comment-list" style={{ display: "inline-flex" }}>
                    <i className="far fa-comment-alt mt-1"></i>
                    <div className="ml-3">
                        <div >{i.comment}</div>
                        <div className="mb-2" ><h5><a className="user-anchor">{i.user}</a></h5></div>
                    </div>
                </div>
            )




        );
    }
}
export default CommentList