/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      screens: {
        'pc-960': '960px',
        'pc-1200': '1200px',
        "pc-1440": "1440px",
        "pc-1920": "1920px",
        'video-815':'815px',
      },
      fontFamily: {
        'geist-light': ['Geist Light'],
        'geist-regular': ['Geist Regular'],
        'ppsupplySans-regular': ['PPSupplySans Regular'],
      },
    },
  },
  plugins: [
    require('tailwind-scrollbar'),
  ],
}
