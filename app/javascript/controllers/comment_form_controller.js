import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment-form"
export default class extends Controller {
  static targets = ["button"]
  input(e){
    const content = e.target.value.trim()

    if (content != "") {
      this.buttonTarget.classList.remove("btn-primary")
      this.buttonTarget.classList.add("btn-disable")
      this.buttonTarget.removeAttribute("disabled")
    } else {
      // 關
      this.buttonTarget.classList.remove("btn-disable")
      this.buttonTarget.classList.add("btn-primary")
      this.buttonTarget.setAttribute("disabled", "")
    }
  }
}
