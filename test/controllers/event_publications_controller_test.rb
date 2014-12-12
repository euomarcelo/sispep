require 'test_helper'

class EventPublicationsControllerTest < ActionController::TestCase
  setup do
    @event_publication = event_publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_publication" do
    assert_difference('EventPublication.count') do
      post :create, event_publication: { ISBN: @event_publication.ISBN, annalTitle: @event_publication.annalTitle, basic_publication_id: @event_publication.basic_publication_id, endingPage: @event_publication.endingPage, eventCity: @event_publication.eventCity, eventName: @event_publication.eventName, issue: @event_publication.issue, publisherCity: @event_publication.publisherCity, publisherName: @event_publication.publisherName, series: @event_publication.series, startingPage: @event_publication.startingPage, volume: @event_publication.volume, year: @event_publication.year }
    end

    assert_redirected_to event_publication_path(assigns(:event_publication))
  end

  test "should show event_publication" do
    get :show, id: @event_publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_publication
    assert_response :success
  end

  test "should update event_publication" do
    patch :update, id: @event_publication, event_publication: { ISBN: @event_publication.ISBN, annalTitle: @event_publication.annalTitle, basic_publication_id: @event_publication.basic_publication_id, endingPage: @event_publication.endingPage, eventCity: @event_publication.eventCity, eventName: @event_publication.eventName, issue: @event_publication.issue, publisherCity: @event_publication.publisherCity, publisherName: @event_publication.publisherName, series: @event_publication.series, startingPage: @event_publication.startingPage, volume: @event_publication.volume, year: @event_publication.year }
    assert_redirected_to event_publication_path(assigns(:event_publication))
  end

  test "should destroy event_publication" do
    assert_difference('EventPublication.count', -1) do
      delete :destroy, id: @event_publication
    end

    assert_redirected_to event_publications_path
  end
end
