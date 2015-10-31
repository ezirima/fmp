package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PresenceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Presence.list(params), model:[presenceInstanceCount: Presence.count()]
    }

    def show(Presence presenceInstance) {
        respond presenceInstance
    }

    def create() {
        respond new Presence(params)
    }

    @Transactional
    def save(Presence presenceInstance) {
        if (presenceInstance == null) {
            notFound()
            return
        }

        if (presenceInstance.hasErrors()) {
            respond presenceInstance.errors, view:'create'
            return
        }

        presenceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'presence.label', default: 'Presence'), presenceInstance.id])
                redirect presenceInstance
            }
            '*' { respond presenceInstance, [status: CREATED] }
        }
    }

    def edit(Presence presenceInstance) {
        respond presenceInstance
    }

    @Transactional
    def update(Presence presenceInstance) {
        if (presenceInstance == null) {
            notFound()
            return
        }

        if (presenceInstance.hasErrors()) {
            respond presenceInstance.errors, view:'edit'
            return
        }

        presenceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Presence.label', default: 'Presence'), presenceInstance.id])
                redirect presenceInstance
            }
            '*'{ respond presenceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Presence presenceInstance) {

        if (presenceInstance == null) {
            notFound()
            return
        }

        presenceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Presence.label', default: 'Presence'), presenceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'presence.label', default: 'Presence'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
