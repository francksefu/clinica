require "application_system_test_case"

class AvaliacaoInstrumentosTest < ApplicationSystemTestCase
  setup do
    @avaliacao_instrumento = avaliacao_instrumentos(:one)
  end

  test "visiting the index" do
    visit avaliacao_instrumentos_url
    assert_selector "h1", text: "Avaliacao instrumentos"
  end

  test "should create avaliacao instrumento" do
    visit avaliacao_instrumentos_url
    click_on "New avaliacao instrumento"

    fill_in "Avaliacao", with: @avaliacao_instrumento.avaliacao_id
    fill_in "Instrumento", with: @avaliacao_instrumento.instrumento_id
    click_on "Create Avaliacao instrumento"

    assert_text "Avaliacao instrumento was successfully created"
    click_on "Back"
  end

  test "should update Avaliacao instrumento" do
    visit avaliacao_instrumento_url(@avaliacao_instrumento)
    click_on "Edit this avaliacao instrumento", match: :first

    fill_in "Avaliacao", with: @avaliacao_instrumento.avaliacao_id
    fill_in "Instrumento", with: @avaliacao_instrumento.instrumento_id
    click_on "Update Avaliacao instrumento"

    assert_text "Avaliacao instrumento was successfully updated"
    click_on "Back"
  end

  test "should destroy Avaliacao instrumento" do
    visit avaliacao_instrumento_url(@avaliacao_instrumento)
    click_on "Destroy this avaliacao instrumento", match: :first

    assert_text "Avaliacao instrumento was successfully destroyed"
  end
end
