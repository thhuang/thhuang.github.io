import React from 'react';
import './contact.css';
import { MdOutlineEmail } from 'react-icons/md';
import { VscIssues } from 'react-icons/vsc';

const Contact = () => {
  return (
    <section id="contact">
      <h5>Get In Touch</h5>
      <h2>Contact</h2>

      <div className="container-base contact__container">
        <div className="contact__options">
          <article className="contact__option">
            <MdOutlineEmail className="contact__icon" />
            <h4>Email</h4>
            <h5>
              tzhsn.huang
              <span className="hidden">hello</span>@
              <span className="hidden">world</span>
              gmail.com
            </h5>
            <a
              href="mailto:tzhsn.huang@gmail.com"
              target="_blank"
              rel="noopener noreferrer"
            >
              Send a message
            </a>
          </article>
          <article className="contact__option">
            <VscIssues className="contact__icon" />
            <h4>GitHub</h4>
            <h5>thhuang</h5>
            <a
              href="https://github.com/thhuang/thhuang/issues"
              target="_blank"
              rel="noopener noreferrer"
            >
              Create an issue
            </a>
          </article>
        </div>

        <form action="">
          <input
            type="text"
            name="name"
            placeholder="Your Full Name"
            required
          />
          <input type="email" name="email" placeholder="Your Email" required />
          <textarea
            name="message"
            rows="7"
            placeholder="Your Messages"
            required
          ></textarea>
          <button type="submit" className="btn btn-primary">
            Send Message
          </button>
        </form>
      </div>
    </section>
  );
};

export default Contact;
