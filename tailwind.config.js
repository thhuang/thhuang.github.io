const { wait } = require('@testing-library/user-event/dist/utils');

/** @type {import('tailwindcss').Config} */
module.exports = {
  mode: 'jit',
  content: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  theme: {
    extend: {
      colors: {
        background: '#0e011a',
        'background-varient': '#1d0235',
        primary: '#836EAA',
        'primary-varient': '#4db5ff66',
        white: '#ffffff',
        light: '#BBB8B8',
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
