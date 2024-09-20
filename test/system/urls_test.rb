require "application_system_test_case"

class UrlsTest < ApplicationSystemTestCase
  setup do
    @url = urls(:one)
  end

  test "visiting the index" do
    visit urls_url
    assert_selector "h1", text: "Urls"
  end

  test "should create url" do
    visit urls_url
    click_on "Shorten a new URL"

    fill_in "Long url", with: @url.long_url
    fill_in "url_description", with: @url.description
    fill_in "url_owner", with: @url.owner
    click_on "Create Url"

    assert_text "Url was successfully created"
    click_on "Back"
  end

  test "should update Url" do
    visit url_url(@url)
    click_on "Edit this url", match: :first

    fill_in "Description", with: @url.description
    click_on "Update Url"

    assert_text "Url was successfully updated"
    click_on "Back"
  end
end
