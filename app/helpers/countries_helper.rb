module CountriesHelper
    def output_country(country)
        country.region + ', ' + country.name
    end
end
