// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'
require("@rails/ujs").start()
require("turbolinks")
require("@rails/activestorage").start()
require("channels")

Rails.start()
Turbolinks.start()
ActiveStorage.start()


//= require selectize
//= require jquery

//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks



require("selectize")
require("packs/language")