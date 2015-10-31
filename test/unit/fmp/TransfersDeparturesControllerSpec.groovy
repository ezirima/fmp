package fmp



import grails.test.mixin.*
import spock.lang.*

@TestFor(TransfersDeparturesController)
@Mock(TransfersDepartures)
class TransfersDeparturesControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.transfersDeparturesInstanceList
            model.transfersDeparturesInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.transfersDeparturesInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def transfersDepartures = new TransfersDepartures()
            transfersDepartures.validate()
            controller.save(transfersDepartures)

        then:"The create view is rendered again with the correct model"
            model.transfersDeparturesInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            transfersDepartures = new TransfersDepartures(params)

            controller.save(transfersDepartures)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/transfersDepartures/show/1'
            controller.flash.message != null
            TransfersDepartures.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def transfersDepartures = new TransfersDepartures(params)
            controller.show(transfersDepartures)

        then:"A model is populated containing the domain instance"
            model.transfersDeparturesInstance == transfersDepartures
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def transfersDepartures = new TransfersDepartures(params)
            controller.edit(transfersDepartures)

        then:"A model is populated containing the domain instance"
            model.transfersDeparturesInstance == transfersDepartures
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/transfersDepartures/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def transfersDepartures = new TransfersDepartures()
            transfersDepartures.validate()
            controller.update(transfersDepartures)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.transfersDeparturesInstance == transfersDepartures

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            transfersDepartures = new TransfersDepartures(params).save(flush: true)
            controller.update(transfersDepartures)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/transfersDepartures/show/$transfersDepartures.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/transfersDepartures/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def transfersDepartures = new TransfersDepartures(params).save(flush: true)

        then:"It exists"
            TransfersDepartures.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(transfersDepartures)

        then:"The instance is deleted"
            TransfersDepartures.count() == 0
            response.redirectedUrl == '/transfersDepartures/index'
            flash.message != null
    }
}
