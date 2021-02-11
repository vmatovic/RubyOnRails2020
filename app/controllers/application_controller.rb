class ApplicationController < ActionController::Base
    include SessionsHelper
    include ProductsHelper
    
    def hello
        render html: "hello, world!"
    end
    
end
