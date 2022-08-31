import React from 'react';
import './nav.css';
import { AiOutlineHome, AiOutlineUser } from 'react-icons/ai';
import { BiBook, BiCodeBlock, BiMessageSquareDetail } from 'react-icons/bi';

const Nav = () => {
  return (
    <nav>
      <a href="#header">
        <AiOutlineHome />
      </a>
      <a href="#about">
        <AiOutlineUser />
      </a>
      <a href="#experience">
        <BiBook />
      </a>
      <a href="#portfolio">
        <BiCodeBlock />
      </a>
      <a href="#contact">
        <BiMessageSquareDetail />
      </a>
    </nav>
  );
};

export default Nav;
