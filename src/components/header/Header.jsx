import React from 'react';
import './header.css';
import HeaderSocials from './HeaderSocials';
import ME from './ME';
import ScrollDown from './ScrollDown';

const Header = () => {
  return (
    <header id="header">
      <div className="container-base header__container">
        <h5>Hello I'm</h5>
        <h1>TH Huang</h1>
        <h5 className="text-light">Backend Developer</h5>
        <HeaderSocials />
        <ME />
        <ScrollDown />
      </div>
    </header>
  );
};

export default Header;
