require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { content_1: @product.content_1, content_2: @product.content_2, content_3: @product.content_3, content_4: @product.content_4, description_1: @product.description_1, description_2: @product.description_2, description_3: @product.description_3, description_4: @product.description_4, ingredient_1: @product.ingredient_1, ingredient_2: @product.ingredient_2, ingredient_3: @product.ingredient_3, ingredient_4: @product.ingredient_4, name: @product.name, quantity_1: @product.quantity_1, quantity_2: @product.quantity_2, quantity_3: @product.quantity_3, quantity_4: @product.quantity_4, quantity_asked: @product.quantity_asked, sub_description: @product.sub_description } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { content_1: @product.content_1, content_2: @product.content_2, content_3: @product.content_3, content_4: @product.content_4, description_1: @product.description_1, description_2: @product.description_2, description_3: @product.description_3, description_4: @product.description_4, ingredient_1: @product.ingredient_1, ingredient_2: @product.ingredient_2, ingredient_3: @product.ingredient_3, ingredient_4: @product.ingredient_4, name: @product.name, quantity_1: @product.quantity_1, quantity_2: @product.quantity_2, quantity_3: @product.quantity_3, quantity_4: @product.quantity_4, quantity_asked: @product.quantity_asked, sub_description: @product.sub_description } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
