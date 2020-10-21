import React from "react"
import PropTypes from "prop-types"
import hotwater from "/home/sachin/food/app/assets/images/hot_water.jpg"
import CommentSection from "./commentsection"

class Step extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            showComments: false
        }
        this.handleClick = this.handleClick.bind(this)
    }
    handleClick() {
        this.setState((state) => ({
            showComments: !state.showComments
        }))
    }
    render() {
        var step = this.props.step
        // console.log(step)
        if (this.state.showComments) {
            var commentSection = <CommentSection step={step} comments={this.props.comments} user={this.props.user} users={this.props.users} ></CommentSection>

        }

        return (
            <div className="row">
                <h3 className="steptitle heads d-block d-sm-none ">Step {step.step_num} :
                            <span className="stitle">
                        {step.step_title}
                    </span>
                </h3>
                <h3 className="steptitle heads d-none d-sm-block d-md-none d-xs-block">Step {step.step_num} :
                            <span className="stitle">
                        {step.step_title}
                    </span>
                </h3>
                <div className="col-sm-12 col-md-6">
                    <img src={hotwater} alt="image" className="styleimage"></img>
                </div>
                <div className="col-sm-12 col-md-6">
                    <h3 className="steptitle heads d-none d-md-block d-lg-block ">Step {step.step_num} :
                                <span className="stitle">
                            {step.step_title}
                        </span>
                    </h3>
                    <p className="desc">
                        {step.step_description}
                    </p>
                </div>
                <div className="divider">
                    <div className=" row-divider"></div>
                    <div className=" cblock">
                        <button type="button" className="btn btn-link" onClick={this.handleClick}>
                            <i className="far fa-comment-alt"></i>
                            <span className="space">Comments</span>
                        </button>
                    </div>
                </div>
                {commentSection}
            </div>
        );
    }
}
export default Step