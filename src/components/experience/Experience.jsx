import React from 'react';
import './experience.css';

const Experience = () => {
  return (
    <section id="experience">
      <h5>My Professional</h5>
      <h2>Experience</h2>

      <div className="container-base experience__container">
        <div>
          <div className="role">
            <div>
              <h3>Backend Engineer Contractor</h3>
            </div>
            <div>
              <p>March 2022 - Present</p>
            </div>
          </div>
          <div className="role">
            <div>
              <h3>Tech Lead / Backend Engineer</h3>
            </div>
            <div>
              <p>January 2021 - March 2022</p>
            </div>
          </div>

          <h4>Cooby | A Sequoia-backed data-driven B2C sales platform</h4>

          <div className="skills">
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

          <ul>
            <li>
              Founding team member and primary contributor in developing backend
              servers and infrastructures.
            </li>
            <li>
              Designed and initiated an extensible service architecture
              leveraging AWS, allowing developers exclusively focus on
              developing the core business logic to support rapid product
              iterations.
            </li>
            <li>
              Defined the CI/CD workflow by utilizing AWS CDK and GitHub
              Actions, enabling daily production releases while maintaining the
              API success rate at 99.99% and zero production outages for more
              than eight months.
            </li>
            <li>
              Established the product development framework and feedback
              process, ensuring weekly version updates and feature releases in
              the context of agile software development.
            </li>
          </ul>
        </div>

        <div>
          <div className="role">
            <div>
              <h3>Backend Engineer</h3>
            </div>
            <div>
              <p>December 2019 – January 2021</p>
            </div>
          </div>

          <h4>17LIVE | The leading live-streaming platform in Asia</h4>

          <div className="skills">
            <small>Docker</small>
            <small>Go</small>
            <small>Kubernetes</small>
            <small>MongoDB</small>
            <small>MySQL</small>
            <small>Redis</small>
          </div>

          <ul>
            <li>
              Designed and implemented a lock-free live-streaming battle system,
              one of the top five features in the app, allowing streamers to
              play games together in a merged live stream and interact with
              audiences in real-time.
            </li>
            <li>
              Developed 20+ high-QPS features in Go, increasing ARPPU by 30%, D1
              retention by 30%, and DAU by 120%.
            </li>
            <li>
              Developed a notification backup system, decreasing 80% of live
              stream notification failures.
            </li>
            <li>
              Co-designed an architecture and hot migration plan to migrate the
              entire backend service into microservices, successfully reducing
              99% of possible outages.
            </li>
          </ul>
        </div>

        <div>
          <div className="role">
            <div>
              <h3>Software Engineer</h3>
            </div>
            <div>
              <p>May 2018 – June 2019</p>
            </div>
          </div>
          <div className="role">
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

          <div className="skills">
            <small>Arduino</small>
            <small>C++</small>
            <small>OpenCV</small>
            <small>PX4</small>
            <small>Python</small>
            <small>PyTorch</small>
            <small>ROS</small>
            <small>scikit-learn</small>
          </div>

          <ul>
            <li>
              Constructed a ROS-based autonomous flight system for drones in C++
              and Python, with modules including obstacle avoidance, motion
              planning, state estimation, LiDAR SLAM, preflight verification,
              and failsafe control.
            </li>
            <li>
              Designed and developed multiple autonomous quadcopter and
              hexacopter hardware prototypes.
            </li>
            <li>
              Proposed a deep learning-based, aesthetic view-selecting algorithm
              for aerial 360° panoramic videos.
            </li>
            <li>
              Developed a film highlight extraction algorithm with an
              unsupervised ML model for automatic video editing.
            </li>
          </ul>
        </div>
      </div>
    </section>
  );
};

export default Experience;
