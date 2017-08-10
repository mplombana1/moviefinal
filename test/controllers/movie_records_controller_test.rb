require 'test_helper'

class MovieRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_record = movie_records(:one)
  end

  test "should get index" do
    get movie_records_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_record_url
    assert_response :success
  end

  test "should create movie_record" do
    assert_difference('MovieRecord.count') do
      post movie_records_url, params: { movie_record: { imbd_url: @movie_record.imbd_url, imdb_rating: @movie_record.imdb_rating, personal_rating: @movie_record.personal_rating, plot: @movie_record.plot, poster_url: @movie_record.poster_url, title: @movie_record.title, user_id: @movie_record.user_id, wachted: @movie_record.wachted } }
    end

    assert_redirected_to movie_record_url(MovieRecord.last)
  end

  test "should show movie_record" do
    get movie_record_url(@movie_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_record_url(@movie_record)
    assert_response :success
  end

  test "should update movie_record" do
    patch movie_record_url(@movie_record), params: { movie_record: { imbd_url: @movie_record.imbd_url, imdb_rating: @movie_record.imdb_rating, personal_rating: @movie_record.personal_rating, plot: @movie_record.plot, poster_url: @movie_record.poster_url, title: @movie_record.title, user_id: @movie_record.user_id, wachted: @movie_record.wachted } }
    assert_redirected_to movie_record_url(@movie_record)
  end

  test "should destroy movie_record" do
    assert_difference('MovieRecord.count', -1) do
      delete movie_record_url(@movie_record)
    end

    assert_redirected_to movie_records_url
  end
end
