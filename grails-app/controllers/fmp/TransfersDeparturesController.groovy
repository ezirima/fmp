package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TransfersDeparturesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TransfersDepartures.list(params), model:[transfersDeparturesInstanceCount: TransfersDepartures.count()]
    }

    def show(TransfersDepartures transfersDeparturesInstance) {
        respond transfersDeparturesInstance
    }

    def create() {
        respond new TransfersDepartures(params)
    }

    @Transactional
    def save(TransfersDepartures transfersDeparturesInstance) {
        if (transfersDeparturesInstance == null) {
            notFound()
            return
        }

        if (transfersDeparturesInstance.hasErrors()) {
            respond transfersDeparturesInstance.errors, view:'create'
            return
        }

        transfersDeparturesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'transfersDepartures.label', default: 'TransfersDepartures'), transfersDeparturesInstance.id])
                redirect transfersDeparturesInstance
            }
            '*' { respond transfersDeparturesInstance, [status: CREATED] }
        }
    }

    def edit(TransfersDepartures transfersDeparturesInstance) {
        respond transfersDeparturesInstance
    }

    @Transactional
    def update(TransfersDepartures transfersDeparturesInstance) {
        if (transfersDeparturesInstance == null) {
            notFound()
            return
        }

        if (transfersDeparturesInstance.hasErrors()) {
            respond transfersDeparturesInstance.errors, view:'edit'
            return
        }

        transfersDeparturesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TransfersDepartures.label', default: 'TransfersDepartures'), transfersDeparturesInstance.id])
                redirect transfersDeparturesInstance
            }
            '*'{ respond transfersDeparturesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TransfersDepartures transfersDeparturesInstance) {

        if (transfersDeparturesInstance == null) {
            notFound()
            return
        }

        transfersDeparturesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TransfersDepartures.label', default: 'TransfersDepartures'), transfersDeparturesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfersDepartures.label', default: 'TransfersDepartures'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
