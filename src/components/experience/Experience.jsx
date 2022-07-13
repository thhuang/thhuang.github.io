import React from 'react';
import './experience.css';

const Experience = () => {
  return (
    <section id="experience">
      <h5>My Professional</h5>
      <h2>Experience</h2>

      <div className="container-base experience__container">
        <div className="experience__card">
          <div className="experience__role">
            <div>
              <h3>Backend Engineer Contractor</h3>
            </div>
            <div>
              <p>March 2022 - Present</p>
            </div>
          </div>
          <div className="experience__role">
            <div>
              <h3>Tech Lead / Backend Engineer</h3>
            </div>
            <div>
              <p>January 2021 - March 2022</p>
            </div>
          </div>

          <h4>Cooby | A Sequoia-backed data-driven B2C sales platform</h4>

          <div className="experience__skills">
            <small>Amazon API Gateway</small>
            <small>Amazon DynamoDB</small>
            <small>Amazon ECS</small>
            <small>Amazon S3</small>
            <small>AWS CDK</small>
            <small>AWS Lambda</small>
            <small>Docker</small>
            <small>Go</small>
            <small>PostgreSQL </small>
            <small>Python</small>
            <small>Redis</small>
          </div>
        </div>

        <div className="experience__card">
          <div className="experience__role">
            <div>
              <h3>Backend Engineer</h3>
            </div>
            <div>
              <p>December 2019 – January 2021</p>
            </div>
          </div>

          <h4>17LIVE | The leading live-streaming platform in Asia</h4>

          <div className="experience__skills">
            <small>Docker</small>
            <small>Go</small>
            <small>Kubernetes</small>
            <small>MongoDB</small>
            <small>MySQL</small>
            <small>Redis</small>
          </div>
        </div>

        <div className="experience__card">
          <div className="experience__role">
            <div>
              <h3>Software Engineer</h3>
            </div>
            <div>
              <p>May 2018 – June 2019</p>
            </div>
          </div>
          <div className="experience__role">
            <div>
              <h3>Machine Learning Engineer Intern</h3>
            </div>
            <div>
              <p>November 2017 – May 2018</p>
            </div>
          </div>

          <h4>
            Taiwan AI Labs | A privately funded AI research institute in
            partnership with the government
          </h4>

          <div className="experience__skills">
            <small>Arduino</small>
            <small>C++</small>
            <small>OpenCV</small>
            <small>PX4</small>
            <small>Python</small>
            <small>PyTorch</small>
            <small>ROS</small>
            <small>scikit-learn</small>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Experience;
