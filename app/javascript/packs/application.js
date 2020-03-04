// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";
import 'jquery-touchswipe/jquery.touchSwipe';
import { swipeProfile } from "../components/profileswipe";
import { initCalendar } from "../components/init_calendar";
import { initChrono } from "../components/init_chrono";
import { loadAnimation } from "../components/load_animation";
import { hiddenSubmit } from "../components/init_hiddensubmit";
// import com.steelkiwi.library.SlidingSquareLoaderView
swipeProfile();




const hideOrDisplayMenu = () => {
  const x = document.getElementById("myDIV");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}


const buttonSettings = document.getElementById('user-settings');

if (buttonSettings) {
  buttonSettings.addEventListener('click', (event) => {
    event.preventDefault();
    hideOrDisplayMenu();
  })
}




// const buttonUpdateProfile = document.getElementById('update-profile');
// buttonUpdateProfile.addEventListener('click', (event) => {
//   event.preventDefault();
//   hideMenu();
//   displayMenu();
// })
document.addEventListener('turbolinks:load', () => {
  swipeProfile();
    // Do your stuff!


  if(document.getElementById('countdown')) {
    initChrono();

  };

  if(document.querySelector(".fa-calendar-check")) {
    initCalendar();
  };

  if (document.querySelector(".avatar-feedback")) {
    hiddenSubmit();
  };
  loadAnimation();
})


// const match = document.getElementById('Rencontrer');

// if (match) {
//   buttonSettings.addEventListener('click', (event) => {
//     event.preventDefault();
//     hideOrDisplayMenu();
//   })
// }































