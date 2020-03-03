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
    // Do your stuff!
  let interval;
  const countdown = document.getElementById('countdown');
  if (countdown) {
    let initTime = parseInt(countdown.innerText, 10);

    const updateChrono = () => {
      initTime = initTime - 100;
      var heure = parseInt((initTime / 3600), 10);
      var reste = (initTime % 3600);
      var minutes = parseInt((reste / 60),10);
      var seconde = reste % 60;
      var newHour = heure + ":" + minutes + ":" + seconde

      if (heure + minutes + seconde < 0) {
        countdown.innerText = "00:00:00"
        clearInterval(interval)
        debbuger;
        window.location.href = window.location.origin + '/users';
      }

      countdown.innerText = newHour
    }
    updateChrono();
    interval = setInterval(updateChrono, 1);
  };
})



// const match = document.getElementById('Rencontrer');

// if (match) {
//   buttonSettings.addEventListener('click', (event) => {
//     event.preventDefault();
//     hideOrDisplayMenu();
//   })
// }



