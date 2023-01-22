import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="employees--card-id"
export default class extends Controller {
    static targets = ["flipContent"]

    flipCardId() {
        this.flipContentTarget.classList.toggle("rotate-y-180")
    }
}
