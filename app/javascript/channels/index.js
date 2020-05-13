// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.
import $ from 'jquery';
import 'bootstrap/dist/js/bootstrap';

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

console.log('Made by: @samzapata');

$(document).on('turbolinks:load', function() {
  $('body').tooltip({
    selector: '[data-toggle="tooltip"]',
    container: 'body',
  });

  $('.scrollmenu').popover({
    selector: '[data-toggle="popover"]',
    container: '.scrollmenu',
    placement: 'bottom',
    // html: true,
  });
});
