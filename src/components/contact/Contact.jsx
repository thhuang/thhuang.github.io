import React, { useRef, useState } from 'react';
import './contact.css';
import { MdOutlineEmail } from 'react-icons/md';
import { VscIssues } from 'react-icons/vsc';
import BarLoader from 'react-spinners/BarLoader';
import emailjs from '@emailjs/browser';

const Contact = () => {
  const formRef = useRef();
  const [sending, setSending] = useState(false);
  const [sent, setSent] = useState(false);

  const sendEmail = (e) => {
    e.preventDefault();

    setSending(true);

    emailjs
      .sendForm(
        'service_nd2hu5z',
        'template_nyikoep',
        formRef.current,
        'SnIyQ9g_NwytAMt4m'
      )
      .then(() => {
        setSent(true);
      });
  };

  const getButtonText = () => {
    if (sent) return 'Sent';
    if (!sending) return 'Send Message';
    return (
      <BarLoader
        className="contact__loading"
        width="107"
        size="10"
        color="#fff"
      />
    );
  };

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

        <form ref={formRef} onSubmit={sendEmail}>
          <input
            type="text"
            name="name"
            placeholder="Your Full Name"
            required
            disabled={sent}
          />
          <input
            type="email"
            name="email"
            placeholder="Your Email"
            required
            disabled={sent}
          />
          <textarea
            name="message"
            rows="7"
            placeholder="Your Messages"
            required
            disabled={sent}
          ></textarea>
          <button
            type="submit"
            className={'translate-ease btn' + (sent ? '' : ' btn-primary')}
            disabled={sending || sent}
          >
            {getButtonText()}
          </button>
        </form>
      </div>
    </section>
  );
};

export default Contact;
