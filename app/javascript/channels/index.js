// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$(".option").on("click", function() {
  $(".option").removeClass("active");
  $(this).addClass("active");
  var type = $(this).data("option");
  setTimeout(function() {
    if (type === "day") {
      $(".time").attr('class', 'time day');
    } else if (type === "night") {
      $(".time").attr('class', 'time night');
    } else if (type === "dusk") {
      $(".time").attr('class', 'time dusk');
    } else if (type === "sunset") {
      $(".time").attr('class', 'time sunset');
    }
  }, 500);
});

console.log('Made by: @samzapata');
