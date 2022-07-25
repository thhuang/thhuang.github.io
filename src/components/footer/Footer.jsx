import React from 'react';
import './footer.css';
import { BsGithub } from 'react-icons/bs';
import { RiLinkedinFill } from 'react-icons/ri';

const Footer = () => {
  return (
    <footer id="footer">
      <a href="#header" className="footer__logo">
        TH Huang
      </a>

      <div className="footer__socials">
        <a
          href="https://linkedin.com/in/tzuhsuanhuang/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <RiLinkedinFill />
        </a>
        <a
          href="https://github.com/thhuang/"
          target="_blank"
          rel="noopener noreferrer"
        >
          <BsGithub />
        </a>
      </div>

      <div className="footer__copyright">
        <small>&copy; {new Date().getFullYear()} TH Huang</small>
      </div>
    </footer>
  );
};

export default Footer;
