import "../plugins/flatpickr"
import 'flatpickr/dist/themes/airbnb.css';
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const totalPrice = () => {
  const fp = flatpickr("#range", {
    altInput: true,
    "plugins": [new rangePlugin({ input: "#end_date"})]
  });

  const range = document.getElementById("range");
  if (range) {
      range.addEventListener('change', () => {
    calculatePrice();
   });
  }

  function days_between(date1, date2) {
    // The number of milliseconds in one day
    const ONE_DAY = 1000 * 60 * 60 * 24;

    // Calculate the difference in milliseconds
    const differenceMs = Math.abs(date1 - date2);
    // console.log(differenceMs)
    // Convert back to days and return
    return Math.round(differenceMs / ONE_DAY);
  }

  const calculatePrice = () => {

    if (document.getElementById("end_date").value != "") {
      const range = document.getElementById("range").value;
      let rangeArr = range.split(" to ");
      const start = new Date(rangeArr[0]);
      const end = new Date(rangeArr[1]);

      const daysRange = days_between(start, end);
      console.log(daysRange)

      //render total price on screen
      document.getElementById('days-range').innerText = (daysRange === 1) ? `${price}€ x 1 day` : `${price}€ x ${daysRange} days`;
      document.getElementById('price-total').innerText = `Total: ${price * daysRange}€`;
      document.querySelector('.range-price').style.display = "flex";
    } else {
      document.querySelector('.range-price').style.display = "none";
    }
  }
}
export { totalPrice };
