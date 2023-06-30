class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'
    serialized_product += product.id.to_json
    serialized_product += product.name.to_json
    serialized_product += product.description.to_json
    serialized_product += product.inventory.to_json
    serialized_product += product.price.to_json

    #serialized_product += '"id": ' + product.id.to_s + ', '
    #serialized_product += '"name": "' + product.name + '", '
    #serialized_product += '"description": "' + product.description + '", '
    #serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    #serialized_product += '"price": "' + product.price.to_s + '"'

    serialized_product += '}'
  end
end
