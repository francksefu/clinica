require "application_system_test_case"

class AvaliacaosTest < ApplicationSystemTestCase
  setup do
    @avaliacao = avaliacaos(:one)
  end

  test "visiting the index" do
    visit avaliacaos_url
    assert_selector "h1", text: "Avaliacaos"
  end

  test "should create avaliacao" do
    visit avaliacaos_url
    click_on "New avaliacao"

    fill_in "Cpf", with: @avaliacao.cpf
    fill_in "Data de nascimento", with: @avaliacao.data_de_nascimento
    fill_in "Email", with: @avaliacao.email
    fill_in "Nome", with: @avaliacao.nome
    fill_in "User", with: @avaliacao.user_id
    click_on "Create Avaliacao"

    assert_text "Avaliacao was successfully created"
    click_on "Back"
  end

  test "should update Avaliacao" do
    visit avaliacao_url(@avaliacao)
    click_on "Edit this avaliacao", match: :first

    fill_in "Cpf", with: @avaliacao.cpf
    fill_in "Data de nascimento", with: @avaliacao.data_de_nascimento
    fill_in "Email", with: @avaliacao.email
    fill_in "Nome", with: @avaliacao.nome
    fill_in "User", with: @avaliacao.user_id
    click_on "Update Avaliacao"

    assert_text "Avaliacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Avaliacao" do
    visit avaliacao_url(@avaliacao)
    click_on "Destroy this avaliacao", match: :first

    assert_text "Avaliacao was successfully destroyed"
  end
end
