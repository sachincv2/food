import React from "react"
import PropTypes from "prop-types"
import CommentList from "./commentlist"
import CommentForm from "./commentform"

class CommentSection extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            list: [],
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
        var getusername;
        this.props.users.forEach(user => {
            if (user.id == userId) {
                getusername = user.username
            }
        })
        return getusername
    }
    handleComments() {
        this.setState({
            user: this.props.user.username
        })
        var commentlist = []
        this.props.comments.forEach(element => {
            var getuserID
            getuserID = this.user(element.user_id)
            commentlist.push({ comment: element.comment_text, user: getuserID })
            this.setState({
                list: commentlist
            })
        });
    }
    componentDidMount() {
        this.handleComments()
    }
    render() {
        return (
            <div className="comment-section">
                {this.state.list.map((i, index) =>
                    <CommentList data={i}></CommentList>)}
                <CommentForm step={this.props.step} count={this.props.comments} handleComments={this.handleComments} addComments={this.addComments} user={this.props.user} ></CommentForm>
            </div>
        );
    }
}
export default CommentSection