import { totalPrice } from 'plugins/booking.js'
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

//this should be added
totalPrice();
initMapbox();

