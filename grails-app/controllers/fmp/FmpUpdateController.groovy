package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FmpUpdateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FmpUpdate.list(params), model:[fmpUpdateInstanceCount: FmpUpdate.count()]
    }

    def show(FmpUpdate fmpUpdateInstance) {
        respond fmpUpdateInstance
    }

    def create() {
        respond new FmpUpdate(params)
    }

    @Transactional
    def save(FmpUpdate fmpUpdateInstance) {
        if (fmpUpdateInstance == null) {
            notFound()
            return
        }

        if (fmpUpdateInstance.hasErrors()) {
            respond fmpUpdateInstance.errors, view:'create'
            return
        }

        fmpUpdateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fmpUpdate.label', default: 'FmpUpdate'), fmpUpdateInstance.id])
                redirect fmpUpdateInstance
            }
            '*' { respond fmpUpdateInstance, [status: CREATED] }
        }
    }

    def edit(FmpUpdate fmpUpdateInstance) {
        respond fmpUpdateInstance
    }

    @Transactional
    def update(FmpUpdate fmpUpdateInstance) {
        if (fmpUpdateInstance == null) {
            notFound()
            return
        }

        if (fmpUpdateInstance.hasErrors()) {
            respond fmpUpdateInstance.errors, view:'edit'
            return
        }

        fmpUpdateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FmpUpdate.label', default: 'FmpUpdate'), fmpUpdateInstance.id])
                redirect fmpUpdateInstance
            }
            '*'{ respond fmpUpdateInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FmpUpdate fmpUpdateInstance) {

        if (fmpUpdateInstance == null) {
            notFound()
            return
        }

        fmpUpdateInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FmpUpdate.label', default: 'FmpUpdate'), fmpUpdateInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fmpUpdate.label', default: 'FmpUpdate'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
