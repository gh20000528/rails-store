const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],

  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    //   //在keyframes設定想要的動態
    //   keyframes: {
    //     wave: {
    //       '0%': {clipOne},
    //       '50%': {clipTwo},
    //       '100%': {clipThree},
    //       }
    //   },
    //   //這邊是我們的animation命名
    //   animation: {
    //     wave: 'wave 2s ease-in-out infinite',
    //  },
     },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require("daisyui"),
  ]
}
