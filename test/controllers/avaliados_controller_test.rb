require "test_helper"

class AvaliadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaliado = avaliados(:one)
  end

  test "should get index" do
    get avaliados_url
    assert_response :success
  end

  test "should get new" do
    get new_avaliado_url
    assert_response :success
  end

  test "should create avaliado" do
    assert_difference("Avaliado.count") do
      post avaliados_url, params: { avaliado: { cpf: @avaliado.cpf, data_de_nascimento: @avaliado.data_de_nascimento, email: @avaliado.email, nome: @avaliado.nome } }
    end

    assert_redirected_to avaliado_url(Avaliado.last)
  end

  test "should show avaliado" do
    get avaliado_url(@avaliado)
    assert_response :success
  end

  test "should get edit" do
    get edit_avaliado_url(@avaliado)
    assert_response :success
  end

  test "should update avaliado" do
    patch avaliado_url(@avaliado), params: { avaliado: { cpf: @avaliado.cpf, data_de_nascimento: @avaliado.data_de_nascimento, email: @avaliado.email, nome: @avaliado.nome } }
    assert_redirected_to avaliado_url(@avaliado)
  end

  test "should destroy avaliado" do
    assert_difference("Avaliado.count", -1) do
      delete avaliado_url(@avaliado)
    end

    assert_redirected_to avaliados_url
  end
end
