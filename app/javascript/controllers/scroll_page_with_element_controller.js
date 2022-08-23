import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="multi-upload"
export default class extends Controller {
    // filesTarget is going to contain the list of input elements we've added
    // files to - in other words, these are the input elements that we're going
    // to submit.
    static targets = ["elemenet"]

    scrollToElement(event) {
        document.getElementById(event.params.id).scrollIntoView({ behavior: 'smooth' })
    }
}