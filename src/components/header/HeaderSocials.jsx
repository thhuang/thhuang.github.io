import React from 'react';
import { BsLinkedin } from 'react-icons/bs';
import { BsGithub } from 'react-icons/bs';

const HeaderSocials = () => {
  return (
    <div
      className="flex flex-col items-center gap-3 absolute left-0 bottom-12
                 after:content-[''] after:w-px after:h-8 after:bg-primary
                 sm:hidden"
    >
      <a
        href="https://linkedin.com/in/tzuhsuanhuang/"
        target="_blank"
        rel="noopener noreferrer"
      >
        <BsLinkedin />
      </a>
      <a
        href="https://github.com/thhuang/"
        target="_blank"
        rel="noopener noreferrer"
      >
        <BsGithub />
      </a>
    </div>
  );
};

export default HeaderSocials;
