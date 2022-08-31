import React from 'react';
import './portfolio.css';
import MarkerPoseEstimation from '../../assets/portfolio/marker-pose-estimation.png';
import AMR from '../../assets/portfolio/amr.png';
import Algo4Fun from '../../assets/portfolio/algo4fun.png';
import GoConcurrency from '../../assets/portfolio/go-concurrency.png';
import Times from '../../assets/portfolio/times.png';
import NurMusik from '../../assets/portfolio/nur-musik.png';

const data = [
  {
    id: 1,
    image: AMR,
    title: 'Adaptive Mesh Refinement Art',
    github: 'https://github.com/thhuang/adaptive-mesh-refinement-art',
  },
  {
    id: 2,
    image: Algo4Fun,
    title: 'LeetCode Solutions in C++',
    github: 'https://github.com/thhuang/algo4fun',
  },
  {
    id: 3,
    image: MarkerPoseEstimation,
    title: 'Marker 6D Pose Estimation',
    github: 'https://github.com/thhuang/marker-pose-estimation',
  },
  {
    id: 4,
    image: GoConcurrency,
    title: 'Go Concurrency for Everyone',
    github: 'https://github.com/thhuang/algo4fun',
    demo: 'https://thhuang.dev/GoConcurrencyForEveryone',
  },
  {
    id: 5,
    image: Times,
    title: 'The TH Times',
    github: 'https://github.com/thhuang/thtimes',
    demo: 'https://thhuang.dev/thtimes',
  },
  {
    id: 6,
    image: NurMusik,
    title: 'Classical Music Radio',
    demo: 'https://apps.apple.com/us/app/id1517280284',
  },
];

const Portfolio = () => {
  return (
    <section id="portfolio">
      <h5>My Personal Project</h5>
      <h2>Portfolio</h2>

      <div className="container-base portfolio__container">
        {data.map(({ id, image, title, github, demo }) => {
          return (
            <article className="portfolio__item">
              <div className="portfolio__item-image">
                <img src={image} alt={title} />
              </div>
              <h3>{title}</h3>
              <div className="portfolio__item-cta">
                <a
                  href={github}
                  className={'btn' + (github ? '' : ' hidden')}
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  GitHub
                </a>
                <a
                  href={demo}
                  className={'btn btn-primary' + (demo ? '' : ' hidden')}
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  Demo
                </a>
              </div>
            </article>
          );
        })}
      </div>
    </section>
  );
};

export default Portfolio;
