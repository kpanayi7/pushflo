// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

require("packs/beStepper")
require("packs/calendar")
require("packs/chart")
require("packs/chat")
require("packs/customDragula")
require("packs/jquery.downCount.min")
require("packs/main")
require("packs/pricing")
require("packs/sidebarMenu")
require("packs/tnsSlider")
require("packs/tooltip")
import "./theme.min"


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

//  if ($(".headingTyped").length) {
//     var typed = new Typed('.headingTyped', {
//       strings: ["First", "Second"],
//       typeSpeed: 40,
//       backSpeed: 40,
//       backDelay: 1000,
//       loop: true
//     });
//   }
