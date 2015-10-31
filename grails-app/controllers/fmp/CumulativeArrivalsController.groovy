package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CumulativeArrivalsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CumulativeArrivals.list(params), model:[cumulativeArrivalsInstanceCount: CumulativeArrivals.count()]
    }

    def show(CumulativeArrivals cumulativeArrivalsInstance) {
        respond cumulativeArrivalsInstance
    }

    def create() {
        respond new CumulativeArrivals(params)
    }

    @Transactional
    def save(CumulativeArrivals cumulativeArrivalsInstance) {
        if (cumulativeArrivalsInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsInstance.hasErrors()) {
            respond cumulativeArrivalsInstance.errors, view:'create'
            return
        }

        cumulativeArrivalsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cumulativeArrivals.label', default: 'CumulativeArrivals'), cumulativeArrivalsInstance.id])
                redirect cumulativeArrivalsInstance
            }
            '*' { respond cumulativeArrivalsInstance, [status: CREATED] }
        }
    }

    def edit(CumulativeArrivals cumulativeArrivalsInstance) {
        respond cumulativeArrivalsInstance
    }

    @Transactional
    def update(CumulativeArrivals cumulativeArrivalsInstance) {
        if (cumulativeArrivalsInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsInstance.hasErrors()) {
            respond cumulativeArrivalsInstance.errors, view:'edit'
            return
        }

        cumulativeArrivalsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CumulativeArrivals.label', default: 'CumulativeArrivals'), cumulativeArrivalsInstance.id])
                redirect cumulativeArrivalsInstance
            }
            '*'{ respond cumulativeArrivalsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CumulativeArrivals cumulativeArrivalsInstance) {

        if (cumulativeArrivalsInstance == null) {
            notFound()
            return
        }

        cumulativeArrivalsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CumulativeArrivals.label', default: 'CumulativeArrivals'), cumulativeArrivalsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cumulativeArrivals.label', default: 'CumulativeArrivals'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
