import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  //when the controller connects to the page,
  //it replaces the element's text content with "Hello World!"
  connect() {
    this.element.textContent = "Hello World!"
  }
}
