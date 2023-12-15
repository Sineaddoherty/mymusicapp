require "application_system_test_case"

class PlaylistsTest < ApplicationSystemTestCase
  setup do
    @playlist = playlists(:one)
  end

  test "visiting the index" do
    visit playlists_url
    assert_selector "h1", text: "Playlists"
  end

  test "should create playlist" do
    visit playlists_url(@playlist)
    click_on "Add a song to playlist", match: :first

    fill_in "Album", with: @playlist.Album
    fill_in "Singer", with: @playlist.Singer
    fill_in "Song", with: @playlist.Song
    fill_in "Year", with: @playlist.year
    click_on "Create Playlist"

    assert_text "Playlist was successfully created"
    click_on "Back"
  end

  test "should update Playlist" do
    visit playlist_url(@playlist)
    click_on "Edit this playlist", match: :first

    fill_in "Album", with: @playlist.Album
    fill_in "Singer", with: @playlist.Singer
    fill_in "Song", with: @playlist.Song
    fill_in "Year", with: @playlist.year
    click_on "Update Playlist"

    assert_text "Playlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Playlist" do
    visit playlist_url(@playlist)
    click_on "Destroy this playlist", match: :first

    assert_text "Playlist was successfully destroyed"
  end
end
