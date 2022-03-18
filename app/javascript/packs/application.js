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

// require("packs/beStepper")
// require("packs/calendar")
// require("packs/chart")
// require("packs/chat")
// require("packs/customDragula")
// require("packs/jquery.downCount.min")
// require("packs/main")
// require("packs/pricing")
// require("packs/sidebarMenu")
require("packs/tnsSlider")
// const theme = require("packs/theme.min")
// require("packs/tooltip")
// require("packs/loom.js")
// require("packs/upload")
import {loomUpload} from "packs/loom"
import {typed} from "packs/typed"

document.addEventListener('turbolinks:load', () => {
  const typedTitle = document.getElementById("title-typed")
  if (typedTitle) {
    typed()
  }


  if (document.querySelector("#loomrecord")) {
    loomUpload()
  }
  const confettiButton = document.getElementById("confetti")
  if (confettiButton) {
    confettiButton.addEventListener("click", () => {
      confetti({ origin:{x: 0.8, y:0.9}});
    })
  }

  const uploads_tab = document.getElementById("currentlyLearning")
    if (uploads_tab) {
    }

});

//$('#loom-record-sdk-button').addEventListener('click', function () {

  //  loomUpload();

//});

require("trix")
require("@rails/actiontext")
