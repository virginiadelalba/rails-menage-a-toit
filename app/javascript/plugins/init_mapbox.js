
import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {

      const popup = new mapboxgl.Popup( { offset: 0 }).setHTML(marker.infoWindow);
      new mapboxgl.Marker()

        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    if (markers.length === 0) {
      map.setZoom(4)
    } else if (markers.length === 1) {
      map.setZoom(15);
      map.setCenter([markers[0].lng, markers[0].lat])
    } else {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach ((marker) => {
        bounds.extend([marker.lng, marker.lat]);
      });
      map.fitBounds(bounds, { padding: 70, maxZoom: 12, duration: 3000 } )
    }

  }
};

export { initMapbox };
