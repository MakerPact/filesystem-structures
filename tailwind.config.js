/** @type {import('tailwindcss').Config} */
module.exports = {
    presets: [require('./themes/hugo-saasify-theme/tailwind.config.js')],
    content: [
      "./themes/hugo-saasify-theme/layouts/**/*.html",
      "./layouts/**/*.html",
      "./content/**/*.{html,md}"
    ],
    theme: {
      extend: {
        colors: {
          primary: {
            DEFAULT: '#3F8CFF',
            '50': '#EBF2FF',
            '100': '#D7E5FF',
            '200': '#B0CFFF',
            '300': '#89B8FF',
            '400': '#62A2FF',
            '500': '#3F8CFF',
            '600': '#1C75FF',
            '700': '#005EEB',
            '800': '#0048B8',
            '900': '#003184'
          },
          accent: '#FFB347',
          background: '#F9FAFB',
          text: '#1F2937',
          highlight: '#10B981',
        },
        fontFamily: {
          sans: ['Inter', 'system-ui', 'sans-serif'],
          heading: ['Plus Jakarta Sans', 'sans-serif'],
        },
      },
    },
    plugins: [
      require('@tailwindcss/forms'),
      require('@tailwindcss/typography'),
    ],
  }
