require "test_helper"

class AvaliacaoInstrumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaliacao_instrumento = avaliacao_instrumentos(:one)
  end

  test "should get index" do
    get avaliacao_instrumentos_url
    assert_response :success
  end

  test "should get new" do
    get new_avaliacao_instrumento_url
    assert_response :success
  end

  test "should create avaliacao_instrumento" do
    assert_difference("AvaliacaoInstrumento.count") do
      post avaliacao_instrumentos_url, params: { avaliacao_instrumento: { avaliacao_id: @avaliacao_instrumento.avaliacao_id, instrumento_id: @avaliacao_instrumento.instrumento_id } }
    end

    assert_redirected_to avaliacao_instrumento_url(AvaliacaoInstrumento.last)
  end

  test "should show avaliacao_instrumento" do
    get avaliacao_instrumento_url(@avaliacao_instrumento)
    assert_response :success
  end

  test "should get edit" do
    get edit_avaliacao_instrumento_url(@avaliacao_instrumento)
    assert_response :success
  end

  test "should update avaliacao_instrumento" do
    patch avaliacao_instrumento_url(@avaliacao_instrumento), params: { avaliacao_instrumento: { avaliacao_id: @avaliacao_instrumento.avaliacao_id, instrumento_id: @avaliacao_instrumento.instrumento_id } }
    assert_redirected_to avaliacao_instrumento_url(@avaliacao_instrumento)
  end

  test "should destroy avaliacao_instrumento" do
    assert_difference("AvaliacaoInstrumento.count", -1) do
      delete avaliacao_instrumento_url(@avaliacao_instrumento)
    end

    assert_redirected_to avaliacao_instrumentos_url
  end
end
