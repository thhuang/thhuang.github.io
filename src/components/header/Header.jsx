import React from 'react';
import CTA from './CTA';
import HeaderSocials from './HeaderSocials';
import ME from './ME';
import ScrollDown from './ScrollDown';

const Header = () => {
  return (
    <header className="h-screen pt-24">
      <div className="container-base text-center relative h-full lg:h-4/6 sm:h-screen">
        <h5>Hello I'm</h5>
        <h1>TH Huang</h1>
        <h5 className="text-light">Backend Developer</h5>
        <CTA />
        <HeaderSocials />
        <ME />
        <ScrollDown />
      </div>
    </header>
  );
};

export default Header;
