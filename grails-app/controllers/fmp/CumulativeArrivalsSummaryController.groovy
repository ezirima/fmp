package fmp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CumulativeArrivalsSummaryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CumulativeArrivalsSummary.list(params), model:[cumulativeArrivalsSummaryInstanceCount: CumulativeArrivalsSummary.count()]
    }

    def show(CumulativeArrivalsSummary cumulativeArrivalsSummaryInstance) {
        respond cumulativeArrivalsSummaryInstance
    }

    def create() {
        respond new CumulativeArrivalsSummary(params)
    }

    @Transactional
    def save(CumulativeArrivalsSummary cumulativeArrivalsSummaryInstance) {
        if (cumulativeArrivalsSummaryInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsSummaryInstance.hasErrors()) {
            respond cumulativeArrivalsSummaryInstance.errors, view:'create'
            return
        }

        cumulativeArrivalsSummaryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cumulativeArrivalsSummary.label', default: 'CumulativeArrivalsSummary'), cumulativeArrivalsSummaryInstance.id])
                redirect cumulativeArrivalsSummaryInstance
            }
            '*' { respond cumulativeArrivalsSummaryInstance, [status: CREATED] }
        }
    }

    def edit(CumulativeArrivalsSummary cumulativeArrivalsSummaryInstance) {
        respond cumulativeArrivalsSummaryInstance
    }

    @Transactional
    def update(CumulativeArrivalsSummary cumulativeArrivalsSummaryInstance) {
        if (cumulativeArrivalsSummaryInstance == null) {
            notFound()
            return
        }

        if (cumulativeArrivalsSummaryInstance.hasErrors()) {
            respond cumulativeArrivalsSummaryInstance.errors, view:'edit'
            return
        }

        cumulativeArrivalsSummaryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CumulativeArrivalsSummary.label', default: 'CumulativeArrivalsSummary'), cumulativeArrivalsSummaryInstance.id])
                redirect cumulativeArrivalsSummaryInstance
            }
            '*'{ respond cumulativeArrivalsSummaryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CumulativeArrivalsSummary cumulativeArrivalsSummaryInstance) {

        if (cumulativeArrivalsSummaryInstance == null) {
            notFound()
            return
        }

        cumulativeArrivalsSummaryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CumulativeArrivalsSummary.label', default: 'CumulativeArrivalsSummary'), cumulativeArrivalsSummaryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cumulativeArrivalsSummary.label', default: 'CumulativeArrivalsSummary'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
