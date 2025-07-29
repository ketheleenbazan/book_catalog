import { Application } from "@hotwired/stimulus"

//start the Stimulus application
const application = Application.start()

//turn off debug mode for production (helps with performance)
application.debug = false

//make Stimulus available globally (useful for debugging in browser console)
window.Stimulus = application

export { application }
