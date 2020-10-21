import React from "react"
import PropTypes from "prop-types"
import lemon from "/home/sachin/food/app/assets/images/lemonttea.jpg"
import hotwater from "/home/sachin/food/app/assets/images/hot_water.jpg"
import MetaData from "./metadata"
import Step from "./step"

class RecipeIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            likes: 0,
            liked: true
        }
        this.incrementLike = this.incrementLike.bind(this);
    }
    getDataForDisplay() {

    }
    incrementLike() {
        if (this.state.liked) {
            this.setState({
                likes: this.state.likes + 1,
                liked: false
            })

        }
        axios({
            method: 'POST',
            url: '/comments',
            data: {
                recipie_likes: this.state.likes
            }
        }).then(data => console.log(data));

    }
    render() {
        var test = this.props.recipies
        var steps = this.props.steps
        var comments = this.props.comments
        return (
            <div className="container main">
                <div><h1 className="name"> {test.recipie_name} </h1></div>
                <div className="likesandcom mt-3">
                    <p className="likes"><button onClick={this.incrementLike}><i className="far fa-thumbs-up likes-icon"></i></button><span className="space">Likes :</span>
                        {this.state.likes}
                    </p>
                    <p className="likes"><i className="far fa-comment-alt comments-icon"></i><span className="space">Comments :</span>
                        {test.recipie_likes}</p>
                </div>
                <div className="row">
                    <div className="col-sm-12 col-md-6 mt-2">
                        <img src={lemon} className="styleimage" alt="image"></img>
                    </div>
                    <div className="col-sm-12 col-md-6 ">
                        <MetaData icon="far fa-clock icon-color" heading="Time" data={test.recipie_time} key="time" />
                        <MetaData icon="fas fa-bars icon-color" heading="Steps" data={steps.length} key="steps" />
                        <MetaData icon="far fa-clipboard icon-color" heading="Difficulty" data={test.recipie_difficulty} key="ease" />
                    </div>
                </div>

                <div className="mt-4">
                    <h2 className="heads">Description <br></br></h2>
                    <p className="desc">{test.recipie_description}</p>
                </div>

                <div className="IE">
                    <div className="row">
                        <div className="col-sm-12 col-md-6 box-border">
                            <h2 className="heads">Ingredients <br></br></h2>
                            {test.recipie_ingredients.map((i) => <li className="desc" key={i}>{i}</li>)}
                        </div>
                        <div className="col-sm-12 col-md-6 box-border">
                            <h2 className="heads">Equipments <br></br></h2>
                            {test.recipie_equipments.map((i) => <li className="desc" key={i}>{i}</li>)}
                        </div>
                    </div>
                </div >
                <div>
                    <h2 className="heads">Skills <br></br></h2>
                    <p className="desc">{test.recipie_skills}</p>
                </div>
                <br></br>
                <h2 className="gap heads">Steps</h2>
                {steps.map((step, index) =>
                    <Step step={step} key={index} comments={comments} user={this.props.user} users={this.props.users}></Step>
                )}
                <div style={{ height: "200px" }}></div>
            </div >

        );
    }
}
export default RecipeIndex