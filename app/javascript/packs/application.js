import "../plugins/flatpickr"

// flatpickr(".datepicker", {
//   altInput: true
// })

import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
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
  console.log(end);
  // console.log(Date.parse(start));
  console.log(new Date(start));
  console.log(new Date(end));
}

