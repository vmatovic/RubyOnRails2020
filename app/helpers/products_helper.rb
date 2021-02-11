module ProductsHelper
    @@current_product = nil
    
    def set_current_product(prod)
        @@current_product = prod
        puts 'called'
    end
    
    def current_product
        @@current_product
    end
end
