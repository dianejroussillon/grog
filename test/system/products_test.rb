require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Content 1", with: @product.content_1
    fill_in "Content 2", with: @product.content_2
    fill_in "Content 3", with: @product.content_3
    fill_in "Content 4", with: @product.content_4
    fill_in "Description 1", with: @product.description_1
    fill_in "Description 2", with: @product.description_2
    fill_in "Description 3", with: @product.description_3
    fill_in "Description 4", with: @product.description_4
    fill_in "Ingredient 1", with: @product.ingredient_1
    fill_in "Ingredient 2", with: @product.ingredient_2
    fill_in "Ingredient 3", with: @product.ingredient_3
    fill_in "Ingredient 4", with: @product.ingredient_4
    fill_in "Name", with: @product.name
    fill_in "Quantity 1", with: @product.quantity_1
    fill_in "Quantity 2", with: @product.quantity_2
    fill_in "Quantity 3", with: @product.quantity_3
    fill_in "Quantity 4", with: @product.quantity_4
    fill_in "Quantity Asked", with: @product.quantity_asked
    fill_in "Sub Description", with: @product.sub_description
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Content 1", with: @product.content_1
    fill_in "Content 2", with: @product.content_2
    fill_in "Content 3", with: @product.content_3
    fill_in "Content 4", with: @product.content_4
    fill_in "Description 1", with: @product.description_1
    fill_in "Description 2", with: @product.description_2
    fill_in "Description 3", with: @product.description_3
    fill_in "Description 4", with: @product.description_4
    fill_in "Ingredient 1", with: @product.ingredient_1
    fill_in "Ingredient 2", with: @product.ingredient_2
    fill_in "Ingredient 3", with: @product.ingredient_3
    fill_in "Ingredient 4", with: @product.ingredient_4
    fill_in "Name", with: @product.name
    fill_in "Quantity 1", with: @product.quantity_1
    fill_in "Quantity 2", with: @product.quantity_2
    fill_in "Quantity 3", with: @product.quantity_3
    fill_in "Quantity 4", with: @product.quantity_4
    fill_in "Quantity Asked", with: @product.quantity_asked
    fill_in "Sub Description", with: @product.sub_description
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
