package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FmPointsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FmPoints.list(params), model:[fmPointsInstanceCount: FmPoints.count()]
    }

    def show(FmPoints fmPointsInstance) {
        respond fmPointsInstance
    }

    def create() {
        respond new FmPoints(params)
    }

    @Transactional
    def save(FmPoints fmPointsInstance) {
        if (fmPointsInstance == null) {
            notFound()
            return
        }

        if (fmPointsInstance.hasErrors()) {
            respond fmPointsInstance.errors, view:'create'
            return
        }

        fmPointsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fmPoints.label', default: 'FmPoints'), fmPointsInstance.id])
                redirect fmPointsInstance
            }
            '*' { respond fmPointsInstance, [status: CREATED] }
        }
    }

    def edit(FmPoints fmPointsInstance) {
        respond fmPointsInstance
    }

    @Transactional
    def update(FmPoints fmPointsInstance) {
        if (fmPointsInstance == null) {
            notFound()
            return
        }

        if (fmPointsInstance.hasErrors()) {
            respond fmPointsInstance.errors, view:'edit'
            return
        }

        fmPointsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FmPoints.label', default: 'FmPoints'), fmPointsInstance.id])
                redirect fmPointsInstance
            }
            '*'{ respond fmPointsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FmPoints fmPointsInstance) {

        if (fmPointsInstance == null) {
            notFound()
            return
        }

        fmPointsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FmPoints.label', default: 'FmPoints'), fmPointsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fmPoints.label', default: 'FmPoints'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
