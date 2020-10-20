import React from "react"
import PropTypes from "prop-types"
import CommentList from "./commentlist"
import CommentForm from "./commentform"
// var comments = this.props.comments
// var step = this.props.step

class CommentSection extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            list: [],
            len: 0,
            user: ""
        }
        this.handleComments = this.handleComments.bind(this)
        this.addComments = this.addComments.bind(this)
        this.user = this.user.bind(this)


    }
    addComments(text) {
        var name = this.state.user;
        var newData = this.state.list.concat({ comment: text, user: name });
        this.setState({
            list: newData
        })
    }
    user(userId) {
        // console.log(this.props.users)
        // console.log(userId)
        var r;
        this.props.users.forEach(user => {
            if (user.id == userId) {
                r = user.username
            }
        })
        return r
    }
    handleComments() {
        console.log(this.props.user)
        this.setState({
            user: this.props.user.username
        })
        console.log(this.props.user)
        var c = []
        this.props.comments.forEach(element => {
            var t
            if (element.step_id == this.props.step.id) {
                t = this.user(element.user_id)
                // console.log(t)
                c.push({ comment: element.comment_text, user: t })
            }
            // console.log(c)
            this.setState({
                list: c,
                len: c.length + 1
            })
        });
    }
    componentDidMount() {
        this.handleComments()
    }
    render() {
        return (
            <div className="comment-section">
                <CommentList data={this.state.list}></CommentList>
                <CommentForm step={this.props.step} len={this.state.len} count={this.props.comments} handleComments={this.handleComments} addComments={this.addComments} user={this.props.user} ></CommentForm>
            </div>
        );
    }
}
export default CommentSection