require "application_system_test_case"

class TestesTest < ApplicationSystemTestCase
  setup do
    @testis = testes(:one)
  end

  test "visiting the index" do
    visit testes_url
    assert_selector "h1", text: "Testes"
  end

  test "should create teste" do
    visit testes_url
    click_on "New teste"

    fill_in "Nome", with: @testis.nome
    click_on "Create Teste"

    assert_text "Teste was successfully created"
    click_on "Back"
  end

  test "should update Teste" do
    visit testis_url(@testis)
    click_on "Edit this teste", match: :first

    fill_in "Nome", with: @testis.nome
    click_on "Update Teste"

    assert_text "Teste was successfully updated"
    click_on "Back"
  end

  test "should destroy Teste" do
    visit testis_url(@testis)
    click_on "Destroy this teste", match: :first

    assert_text "Teste was successfully destroyed"
  end
end
