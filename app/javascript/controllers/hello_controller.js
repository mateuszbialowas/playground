import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        console.log("Hello from controller/hello_controller.js")
        this.element.textContent = "Hello from controller/hello_controller.js"
    }
}
