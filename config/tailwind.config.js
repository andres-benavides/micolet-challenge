const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/views/**/*.html.haml',
    './app/views/**/*.haml',
    './app/components/**/*.html.haml',
    './app/components/**/*.haml',
    './app/components/**/*.rb',
    './app/presenters/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  colors: {
    transparent: 'transparent',
    current: 'currentColor',
    white: '#ffffff',
    black: '#000000',

    blue: {
      100: '#E2EEF8',
      200: '#C8E3FC',
      300: '#A6D1FB',
      400: '#67AFF9',
      500: '#4696F7',
      600: '#3477CE',
      700: '#1E4B82',
      800: '#00365F',
      900: '#041523'
    },

    // ONLY USED AS REFERENCE. DELETE THIS LATER
    //  blue: '#041523',
    //  'blue-10': '#00365F',
    //  'blue-20': '#1E4B82',
    //  'blue-30': '#235695',
    //  'blue-60': '#3477CE',
    //  'blue-70': '#4696F7',
    //  'blue-80': '#67AFF9',
    //  'blue-95': '#C8E3FC',
    //  'blue-99': '#E2EEF8',
    //  'default-blue': '#00365F',
    //  'mid-blue': '#0068A3',
    //  'light-blue': '#62BAEA',
    //  'black-blue': '#041523',

    yellow: {
      100: '#FDFBEB',
      200: '#FDF9D9',
      300: '#FBF4C8',
      400: '#FBF1B7',
      500: '#F4DE5E',
      600: '#F2D74C',
      700: '#F5D107',
      800: '#E9C707',
      900: '#C9B13B'
    },

    // ONLY USED AS REFERENCE. DELETE THIS LATER
    // yellow: '#C9B13B',
    // 'default-yellow': '#F5D107',
    // 'yellow-50': '#F8E887',

    purple: {
      100: '#FDEFFF',
      200: '#E6D8E8',
      300: '#D5BED8',
      400: '#C09EC5',
      500: '#AC7DB2',
      600: '#823C8B',
      700: '#411E45',
      800: '#2B142E',
      900: '#1A0C1C'
    },

    // ONLY USED AS REFERENCE. DELETE THIS LATER
    // purple: '#1A0C1C',
    // 'purple-95': '#E6D8E8',
    // 'purple-99': '#FDEFFF',

    green: '#00472A',
    'green-20': '#066D42',
    'green-30': '#008D52',
    'green-200': '#DAF9EB',
    'green-600': '#00BF6F',
    'green-800': '#035734',
    'default-green': '#44AC8A',

    green: {
      100: '#ECFFF6',
      300: '#C7F1DF',
      600: '#00BF6F',
      700: '#066D42'
    },

    'dark-grey': '#B4C0C7',
    'light-grey': '#E5EDF4',
    'grey-20': '#1B2229',
    'grey-50': '#2E3438',
    'grey-80': '#606263',
    'grey-90': '#8E8E8E',

    grey: {
      50:  '#F8F8F8',
      100: '#EDEDED',
      200: '#C5C5C5',
      300: '#8E8E8E',
      400: '#606263',
      500: '#494D50',
      600: '#373C3F',
      700: '#2E3438',
      800: '#161D25',
      900: '#0C141B'
    },

    red: {
      100: '#FFF2F0',
      200: '#FFEDEA',
      300: '#FFDAD6',
      400: '#FFB4AB',
      500: '#FF5449',
      600: '#DE3730',
      700: '#93000A',
      800: '#410002',
      900: '#2C0001'
    },

    magenta: {
      100: '#FFEFF7',
      600: '#991B58',
      800: '#4D0E2C'
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
