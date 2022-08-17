import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="multi-upload"
export default class extends Controller {
  // filesTarget is going to contain the list of input elements we've added
  // files to - in other words, these are the input elements that we're going
  // to submit.
  static targets = ["files"]

  addFile(event) {
    Array.prototype.forEach.call(event.target.files, file=> {
      const li = document.createElement("li")
      li.appendChild(document.createTextNode(file.name))
      this.filesTarget.appendChild(li)
    })
  }
}