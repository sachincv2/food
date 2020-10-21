import React from "react"
import PropTypes from "prop-types"
function MetaData({ icon, heading, data }) {
    return (
        <div className="row metadata mt-2">
            <div className="col mb-0">
                <p className="left-metadata">
                    <i className={icon}></i>
                    <span className="space"> {heading}</span>
                </p>
            </div>
            <div className="col mb-0 right-metadata">
                {data}
            </div>
        </div>
    );
}
export default MetaData