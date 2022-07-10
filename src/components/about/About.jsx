import React from 'react';
import './about.css';
import ME from '../../assets/me-about.png';
import { FaAward } from 'react-icons/fa';
import { IoMdSchool } from 'react-icons/io';
import { AiFillHeart } from 'react-icons/ai';
const About = () => {
  return (
    <section id="about">
      <h5>Get To Know</h5>
      <h2>About Me</h2>

      <div className="container-base about__container">
        <div className="about__me">
          <div className="about__image">
            <img src={ME} alt="about me" />
          </div>
        </div>

        <div className="about__content">
          <div className="about__cards">
            <article className="about__card">
              <FaAward className="about__icon" />
              <h5>Experience</h5>
              <small>
                4+ Years
                <br />
                Working as SDE
              </small>
            </article>

            <article className="about__card">
              <IoMdSchool className="about__icon" />
              <h5>Education</h5>
              <small>
                MSCS
                <br />@ Northwestern
              </small>
            </article>

            <article className="about__card">
              <AiFillHeart className="about__icon" />
              <h5>Passions</h5>
              <small>
                Classical Music
                <br />& Desserts!
              </small>
            </article>
          </div>

          <ul>
            <li>
              4+ years of experience building successful production systems,
              including B2B/B2C products, web/mobile applications, and
              distributed/parallel systems.
            </li>
            <li>
              1+ years of experience leading a development team with 5+
              engineers responsible for designing, implementing, and delivering
              SaaS products.
            </li>
            <li>
              2+ years of experience contributing to the architecture and design
              of backend systems, exceptionally well versed in large-scale
              service development in Go.
            </li>
          </ul>
        </div>
      </div>
    </section>
  );
};

export default About;
