package fmp



import grails.test.mixin.*
import spock.lang.*

@TestFor(PresenceController)
@Mock(Presence)
class PresenceControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.presenceInstanceList
            model.presenceInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.presenceInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def presence = new Presence()
            presence.validate()
            controller.save(presence)

        then:"The create view is rendered again with the correct model"
            model.presenceInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            presence = new Presence(params)

            controller.save(presence)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/presence/show/1'
            controller.flash.message != null
            Presence.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def presence = new Presence(params)
            controller.show(presence)

        then:"A model is populated containing the domain instance"
            model.presenceInstance == presence
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def presence = new Presence(params)
            controller.edit(presence)

        then:"A model is populated containing the domain instance"
            model.presenceInstance == presence
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/presence/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def presence = new Presence()
            presence.validate()
            controller.update(presence)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.presenceInstance == presence

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            presence = new Presence(params).save(flush: true)
            controller.update(presence)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/presence/show/$presence.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/presence/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def presence = new Presence(params).save(flush: true)

        then:"It exists"
            Presence.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(presence)

        then:"The instance is deleted"
            Presence.count() == 0
            response.redirectedUrl == '/presence/index'
            flash.message != null
    }
}
