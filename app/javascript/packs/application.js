import "bootstrap";
import "../plugins/flatpickr"; // date selector
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// Importing fullpage.js
// import fullpage from 'fullpage.js';

// When using fullPage extensions replace the previous import
// of fullpage.js for this file
import fullpage from 'fullpage.js/dist/fullpage.extensions.min';

// Initializing it
var fullPageInstance = new fullpage('#myFullpage', {
    navigation: true,
    licenseKey: '8B14D2CD-C71C4112-B58FDD37-27DF84C6',
    sectionsColor:['#F4F4F4', '#2C89B1', '#F4F4F4', '#2C89B1'],
    fitToSection: false,
    fixedElements: '.footer-thanatos',

    // continuousVertical: true

});
