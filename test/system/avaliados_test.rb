require "application_system_test_case"

class AvaliadosTest < ApplicationSystemTestCase
  setup do
    @avaliado = avaliados(:one)
  end

  test "visiting the index" do
    visit avaliados_url
    assert_selector "h1", text: "Avaliados"
  end

  test "should create avaliado" do
    visit avaliados_url
    click_on "New avaliado"

    fill_in "Cpf", with: @avaliado.cpf
    fill_in "Data de nascimento", with: @avaliado.data_de_nascimento
    fill_in "Email", with: @avaliado.email
    fill_in "Nome", with: @avaliado.nome
    click_on "Create Avaliado"

    assert_text "Avaliado was successfully created"
    click_on "Back"
  end

  test "should update Avaliado" do
    visit avaliado_url(@avaliado)
    click_on "Edit this avaliado", match: :first

    fill_in "Cpf", with: @avaliado.cpf
    fill_in "Data de nascimento", with: @avaliado.data_de_nascimento
    fill_in "Email", with: @avaliado.email
    fill_in "Nome", with: @avaliado.nome
    click_on "Update Avaliado"

    assert_text "Avaliado was successfully updated"
    click_on "Back"
  end

  test "should destroy Avaliado" do
    visit avaliado_url(@avaliado)
    click_on "Destroy this avaliado", match: :first

    assert_text "Avaliado was successfully destroyed"
  end
end
