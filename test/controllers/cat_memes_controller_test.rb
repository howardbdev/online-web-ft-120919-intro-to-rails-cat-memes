require 'test_helper'

class CatMemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_meme = cat_memes(:one)
  end

  test "should get index" do
    get cat_memes_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_meme_url
    assert_response :success
  end

  test "should create cat_meme" do
    assert_difference('CatMeme.count') do
      post cat_memes_url, params: { cat_meme: { alt: @cat_meme.alt, image_url: @cat_meme.image_url, title: @cat_meme.title, user_id: @cat_meme.user_id } }
    end

    assert_redirected_to cat_meme_url(CatMeme.last)
  end

  test "should show cat_meme" do
    get cat_meme_url(@cat_meme)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_meme_url(@cat_meme)
    assert_response :success
  end

  test "should update cat_meme" do
    patch cat_meme_url(@cat_meme), params: { cat_meme: { alt: @cat_meme.alt, image_url: @cat_meme.image_url, title: @cat_meme.title, user_id: @cat_meme.user_id } }
    assert_redirected_to cat_meme_url(@cat_meme)
  end

  test "should destroy cat_meme" do
    assert_difference('CatMeme.count', -1) do
      delete cat_meme_url(@cat_meme)
    end

    assert_redirected_to cat_memes_url
  end
end
