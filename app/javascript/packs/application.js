import "../plugins/flatpickr"
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const fp = flatpickr("#start_date", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#end_date"})]
});


const start_date = document.getElementById("start_date");
start_date.addEventListener('change', () => {
  calculatePrice();
});

const calculatePrice = () => {
  let start = document.getElementById("start_date").value;
  let end = document.getElementById("end_date").value;

  console.log('Calc');
  console.log(`start: ${start}`);
  console.log(`end: ${end}`);
  // console.log(Date.parse(start));
  console.log(new Date(start));
  console.log(new Date(end));
}



// import flatpickr from 'flatpickr';
// import 'flatpickr/dist/themes/airbnb.css';
// import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
// const fp = flatpickr("#start_date", {
//   altInput: true,
//   "plugins": [new rangePlugin({ input: "#end_date"})],
//   onChange: function(dateObj, dateStr) {
//     const arr = dateStr.split(" to ");
//     const startDate = Math.floor(Date.parse(arr[0]) / (1000 * 60 * 60 * 24));
//     const endDate = Math.floor(Date.parse(arr[1]) / (1000 * 60 * 60 * 24));
//     const daysTotal = endDate - startDate;
//     const daysHtml = document.getElementById('days');
//     const totalPriceHtml = document.getElementById('total-price');
//     const pricePerDay = parseInt(document.getElementById('price').innerText);
//     if (isNaN(daysTotal)) {
//       daysHtml.innerText = 1;
//       totalPriceHtml.innerText = 101;
//     } else {
//       daysHtml.innerText = daysTotal;
//       totalPriceHtml.innerText = pricePerDay * daysTotal;
//     }
//   }
// });
