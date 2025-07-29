//import the Stimulus application instance
import { application } from "controllers/application"

//load all controllers automatically from the controllers directory
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
