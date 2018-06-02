class ProductSerializer
  def self.serialize(product)
    product.to_json(only: [:id, :name, :description, :inventory, :price])
  end
end
