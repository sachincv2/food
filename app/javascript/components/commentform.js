import React from "react"
import PropTypes from "prop-types"
import axios from "axios";
import { Button } from 'react-bootstrap';


class CommentForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            text: ""
        }
        this.handleClick = this.handleClick.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }
    handleChange(e) {
        this.setState({
            [e.target.name]: e.target.value
        })
    }
    handleClick(e) {
        e.preventDefault();
        const token =
            document.querySelector('[name=csrf-token]').content

        axios.defaults.headers.common['X-CSRF-TOKEN'] = token
        const t = this.state.text;
        this.setState({
            text: ""
        })
        axios({
            method: 'POST',
            url: '/comments',
            data: {
                comment_num: this.props.len,
                comment_text: t,
                step_id: this.props.step.id,
                user_id: this.props.user.id
            }
        }).then(
            this.props.addComments(t)

        )
    }
    render() {
        return (
            <form className="comment-form" onSubmit={this.handleClick} >
                <div className="input-group">
                    <textarea className="form-control mb-3 mt-3" aria-label="With textarea" placeholder="enter comment" onChange={this.handleChange} name="text" value={this.state.text}></textarea></div>
                <div className="mb-3"><button type="submit" class="btn btn-primary" /*onClick={this.handleClick}*/ >Add Comment</button></div>
            </form>
        );
    }
}
export default CommentForm