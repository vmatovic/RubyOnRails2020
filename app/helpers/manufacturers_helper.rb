module ManufacturersHelper
    def prod_display(pr)
        pr.device_name+', '+pr.device_platform+', '+pr.min_price.to_s+'$'
    end
end
