require 'test_helper'

class CreateNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_news = create_news(:one)
  end

  test "should get index" do
    get create_news_url
    assert_response :success
  end

  test "should get new" do
    get new_create_news_url
    assert_response :success
  end

  test "should create create_news" do
    assert_difference('CreateNew.count') do
      post create_news_url, params: { create_news: { bill_to: @create_news.bill_to, contract_num: @create_news.contract_num, description: @create_news.description } }
    end

    assert_redirected_to create_news_url(CreateNew.last)
  end

  test "should show create_news" do
    get create_news_url(@create_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_news_url(@create_news)
    assert_response :success
  end

  test "should update create_news" do
    patch create_news_url(@create_news), params: { create_news: { bill_to: @create_news.bill_to, contract_num: @create_news.contract_num, description: @create_news.description } }
    assert_redirected_to create_news_url(@create_news)
  end

  test "should destroy create_news" do
    assert_difference('CreateNew.count', -1) do
      delete create_news_url(@create_news)
    end

    assert_redirected_to create_news_url
  end
end
