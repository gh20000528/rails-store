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
      //在keyframes設定想要的動態
      keyframes: {
      //這個就是我們的箭頭動態啦往右上一直指
      point: {
        '0%': {},
        '50%': {},
        '100%': {},
        }
      },
      //這邊是我們的animation命名
      animation: {
        wave: 'wave 2s ease-in-out infinite',
     },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
