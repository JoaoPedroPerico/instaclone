import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  connect() {
  }

  reset() {
    this.element.reset()
   }
}
