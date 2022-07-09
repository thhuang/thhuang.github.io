const { wait } = require('@testing-library/user-event/dist/utils');

/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: 'jit',
  content: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  theme: {
    extend: {
      colors: {
        background: '#0e011a',
        'background-varient': '#0e011a66',
        primary: '#836eaa',
        'primary-varient': '#4E2A84',
        white: '#ffffff',
        light: '#ffffff99',
      },
    },
    screens: {
      xl: { max: '1280px' },
      // => @media (max-width: 1280px) { ... }

      lg: { max: '1024px' },
      // => @media (max-width: 1024px) { ... }

      md: { max: '768px' },
      // => @media (max-width: 768px) { ... }

      sm: { max: '640px' },
      // => @media (max-width: 640px) { ... }
    },
  },
  plugins: [],
};
