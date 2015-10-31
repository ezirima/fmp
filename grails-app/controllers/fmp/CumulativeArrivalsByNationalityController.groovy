package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CumulativeArrivalsByNationalityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CumulativeArrivalsByNationality.list(params), model:[cumulativeArrivalsByNationalityInstanceCount: CumulativeArrivalsByNationality.count()]
    }

    def show(CumulativeArrivalsByNationality cumulativeArrivalsByNationalityInstance) {
        respond cumulativeArrivalsByNationalityInstance
    }

    def create() {
        respond new CumulativeArrivalsByNationality(params)
    }

    @Transactional
    def save(CumulativeArrivalsByNationality cumulativeArrivalsByNationalityInstance) {
        if (cumulativeArrivalsByNationalityInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsByNationalityInstance.hasErrors()) {
            respond cumulativeArrivalsByNationalityInstance.errors, view:'create'
            return
        }

        cumulativeArrivalsByNationalityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality'), cumulativeArrivalsByNationalityInstance.id])
                redirect cumulativeArrivalsByNationalityInstance
            }
            '*' { respond cumulativeArrivalsByNationalityInstance, [status: CREATED] }
        }
    }

    def edit(CumulativeArrivalsByNationality cumulativeArrivalsByNationalityInstance) {
        respond cumulativeArrivalsByNationalityInstance
    }

    @Transactional
    def update(CumulativeArrivalsByNationality cumulativeArrivalsByNationalityInstance) {
        if (cumulativeArrivalsByNationalityInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsByNationalityInstance.hasErrors()) {
            respond cumulativeArrivalsByNationalityInstance.errors, view:'edit'
            return
        }

        cumulativeArrivalsByNationalityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality'), cumulativeArrivalsByNationalityInstance.id])
                redirect cumulativeArrivalsByNationalityInstance
            }
            '*'{ respond cumulativeArrivalsByNationalityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CumulativeArrivalsByNationality cumulativeArrivalsByNationalityInstance) {

        if (cumulativeArrivalsByNationalityInstance == null) {
            notFound()
            return
        }

        cumulativeArrivalsByNationalityInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality'), cumulativeArrivalsByNationalityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cumulativeArrivalsByNationality.label', default: 'CumulativeArrivalsByNationality'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
