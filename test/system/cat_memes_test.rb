require "application_system_test_case"

class CatMemesTest < ApplicationSystemTestCase
  setup do
    @cat_meme = cat_memes(:one)
  end

  test "visiting the index" do
    visit cat_memes_url
    assert_selector "h1", text: "Cat Memes"
  end

  test "creating a Cat meme" do
    visit cat_memes_url
    click_on "New Cat Meme"

    fill_in "Alt", with: @cat_meme.alt
    fill_in "Image url", with: @cat_meme.image_url
    fill_in "Title", with: @cat_meme.title
    fill_in "User", with: @cat_meme.user_id
    click_on "Create Cat meme"

    assert_text "Cat meme was successfully created"
    click_on "Back"
  end

  test "updating a Cat meme" do
    visit cat_memes_url
    click_on "Edit", match: :first

    fill_in "Alt", with: @cat_meme.alt
    fill_in "Image url", with: @cat_meme.image_url
    fill_in "Title", with: @cat_meme.title
    fill_in "User", with: @cat_meme.user_id
    click_on "Update Cat meme"

    assert_text "Cat meme was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat meme" do
    visit cat_memes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat meme was successfully destroyed"
  end
end
