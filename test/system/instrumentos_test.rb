require "application_system_test_case"

class InstrumentosTest < ApplicationSystemTestCase
  setup do
    @instrumento = instrumentos(:one)
  end

  test "visiting the index" do
    visit instrumentos_url
    assert_selector "h1", text: "Instrumentos"
  end

  test "should create instrumento" do
    visit instrumentos_url
    click_on "New instrumento"

    fill_in "Pergunta cinco", with: @instrumento.pergunta_cinco
    fill_in "Pergunta dois", with: @instrumento.pergunta_dois
    fill_in "Pergunta quatro", with: @instrumento.pergunta_quatro
    fill_in "Pergunta tres", with: @instrumento.pergunta_tres
    fill_in "Pergunta um", with: @instrumento.pergunta_um
    click_on "Create Instrumento"

    assert_text "Instrumento was successfully created"
    click_on "Back"
  end

  test "should update Instrumento" do
    visit instrumento_url(@instrumento)
    click_on "Edit this instrumento", match: :first

    fill_in "Pergunta cinco", with: @instrumento.pergunta_cinco
    fill_in "Pergunta dois", with: @instrumento.pergunta_dois
    fill_in "Pergunta quatro", with: @instrumento.pergunta_quatro
    fill_in "Pergunta tres", with: @instrumento.pergunta_tres
    fill_in "Pergunta um", with: @instrumento.pergunta_um
    click_on "Update Instrumento"

    assert_text "Instrumento was successfully updated"
    click_on "Back"
  end

  test "should destroy Instrumento" do
    visit instrumento_url(@instrumento)
    click_on "Destroy this instrumento", match: :first

    assert_text "Instrumento was successfully destroyed"
  end
end
