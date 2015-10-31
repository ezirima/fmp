package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestionairesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questionaires.list(params), model:[questionairesInstanceCount: Questionaires.count()]
    }

    def show(Questionaires questionairesInstance) {
        respond questionairesInstance
    }

    def create() {
        respond new Questionaires(params)
    }

    @Transactional
    def save(Questionaires questionairesInstance) {
        if (questionairesInstance == null) {
            notFound()
            return
        }

        if (questionairesInstance.hasErrors()) {
            respond questionairesInstance.errors, view:'create'
            return
        }

        questionairesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'questionaires.label', default: 'Questionaires'), questionairesInstance.id])
                redirect questionairesInstance
            }
            '*' { respond questionairesInstance, [status: CREATED] }
        }
    }

    def edit(Questionaires questionairesInstance) {
        respond questionairesInstance
    }

    @Transactional
    def update(Questionaires questionairesInstance) {
        if (questionairesInstance == null) {
            notFound()
            return
        }

        if (questionairesInstance.hasErrors()) {
            respond questionairesInstance.errors, view:'edit'
            return
        }

        questionairesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Questionaires.label', default: 'Questionaires'), questionairesInstance.id])
                redirect questionairesInstance
            }
            '*'{ respond questionairesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Questionaires questionairesInstance) {

        if (questionairesInstance == null) {
            notFound()
            return
        }

        questionairesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Questionaires.label', default: 'Questionaires'), questionairesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionaires.label', default: 'Questionaires'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
