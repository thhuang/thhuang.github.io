import React from 'react';
import Img from '../../assets/me.png';

const ME = () => {
  return (
    <div
      className="bg-gradient-to-b from-primary bg-clip-padding w-80 h-96
                 absolute left-2/4 translate-x-[-50%] mt-10 rounded-t-full"
    >
      <img src={Img} alt="me" className="relative top-[-1.25rem]" />
    </div>
  );
};

export default ME;
