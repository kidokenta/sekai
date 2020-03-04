require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Body", with: @post.body
    fill_in "Youtube url", with: @post.youtube_url
    click_on "Create Post"

    assert_text "投稿が完了しました"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @post.body
    fill_in "Youtube url", with: @post.youtube_url
    click_on "Update Post"

    assert_text "投稿が更新されました"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "投稿は削除されました"
  end
end
