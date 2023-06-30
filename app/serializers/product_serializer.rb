class ProductSerializer
  def self.serialize(product)
    {
      name: product.name,
      description: product.description,
      inventory: product.inventory,
      price: product.price
      }.to_json
  end
end