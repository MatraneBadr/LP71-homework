class Burger < ApplicationRecord
    def nutriments
        product = Openfoodfacts::Product.get(self.code, locale: 'fr');
        return product == nil ? [["No Data"],[""]] : product.nutriments
    end
end
