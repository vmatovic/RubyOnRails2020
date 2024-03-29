# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |n|
    calendar_month_desc = Time.at(Faker::Base.rand_in_range(Date.parse('01-01-1998').to_time.to_i, Date.parse('31-12-2001').to_time.to_i))
    dollars = Faker::Base.rand_in_range(1250000, 2250000).to_i
    CalMonthSale.create!(calendar_month_desc: calendar_month_desc,
                         dollars: dollars)
end

countries = ['South Africa', 'United States of America', 'Brazil', 'Argentina', 'Canada', 'Malaysia', 'Japan',
            'India', 'China', 'Singapore', 'Germany', 'United Kingdom', 'The Netherlands', 'Ireland', 'Denmark',
            'France', 'Spain', 'Turkey', 'Poland', 'Italy', 'Serbia', 'Saudi Arabia', 'Australia', 'New Zealand']

23.times do |i|
    name = countries[i]
    if i == 0
        region = 'Africa'
    elsif i >= 1 and i <= 4
        region = 'Americas'
    elsif i >= 5 and i <= 9
        region = 'Asia'
    elsif i >= 10 and i <= 20
        region = 'Europe'
    elsif i == 21
        region = 'Middle East'
    else
        region = 'Oceania'
    end
    
    Country.create!(name: name,
                    region: region)
end

User.create!(name:  "Vanja Matovic",
             email: "vmatovic3818rn@raf.rs",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             country_id: 21)
             
# Generate a bunch of additional users.
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "password"
  country = Faker::Number.within(range: 1..23)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               country_id: country)
end


start_date = Date.parse('01-01-1998')
num_in_week = 3
num_in_month = 0
curr_month = 1
week_num = 1

1460.times do |i|
    datefull = start_date + i
    CalTime.create!(datefull: datefull,
                    day_number_in_week: num_in_week + 1,
                    day_number_in_month: num_in_month + 1,
                    calendar_week_number: week_num)
    
    num_in_week += 1
    if num_in_week == 7
        num_in_week = 0
        week_num += 1
    end
    
    num_in_month += 1
    if num_in_month == 28 and curr_month == 2
        num_in_month = 0
        curr_month += 1
    elsif num_in_month == 30 and (curr_month == 4 or curr_month == 6 or curr_month == 9 or curr_month == 11)
        num_in_month = 0
        curr_month += 1
    elsif num_in_month == 31 and (curr_month == 1 or curr_month == 3 or curr_month == 5 or curr_month == 7 or curr_month == 8 or curr_month == 10 or curr_month == 12)
        num_in_month = 0
        if curr_month == 12
            curr_month = 1
            week_num = 1
        else
            curr_month += 1
        end
    end
    
end

descs = ['Direct Sales', 'Tele Sales', 'Catalog', 'Internet', 'Partners']

5.times do |i|
    desc = descs[i]
    if i == 0 or i == 1
        classs = 'Direct'
    elsif i == 2 or i == 3
        classs = 'Indirect'
    else
        classs = 'Others'
    end
    
    Channel.create!(desc: desc,
                    classs: classs,
                    total: 'Channel Total')
end

manufacturers = []

10.times do |i|
    name = Faker::Device.manufacturer
    num_employees = Faker::Number.within(range: 10..250)
    
    man = Manufacturer.create!(name: name,
                               num_employees: num_employees)
    
    manufacturers << man
end

70.times do |i|
    device_name = Faker::Device.model_name
    device_platform = Faker::Device.platform
    mmin_price = Faker::Number.decimal(l_digits: 3, r_digits: 2)
    
    pr = Product.create!(device_name: device_name,
                        device_platform: device_platform,
                        min_price: mmin_price)
    
    3.times do |j|
        ind = Faker::Number.within(range: 0..9)
        man = manufacturers[ind]
        man.products << pr
    end

end

100.times do |i|
    promo_name = Faker::Device.model_name + ' promotion'
    promo_cost = Faker::Number.within(range: 100..1000)
    begin_date = Time.at(Faker::Base.rand_in_range(Date.parse('01-01-1998').to_time.to_i, Date.parse('31-12-1998').to_time.to_i))
    end_date = Time.at(Faker::Base.rand_in_range(Date.parse('01-01-1999').to_time.to_i, Date.parse('31-12-2000').to_time.to_i))
    
    Promotion.create!(promo_name: promo_name,
                      promo_cost: promo_cost,
                      begin_date: begin_date,
                      end_date: end_date)
end

200.times do |i|
    sales = Faker::Number.within(range: 1..4)
    i_ct = Faker::Number.within(range: 1..1400)
    i_c = Faker::Number.within(range: 1..4)
    i_p = Faker::Number.within(range: 1..65)
    i_prom = Faker::Number.within(range: 1..95)
    i_u = Faker::Number.within(range: 1..98)
    
    Sale.create!(amount_sold: sales,
                 cal_time_id: i_ct,
                 channel_id: i_c,
                 product_id: i_p,
                 promotion_id: i_prom,
                 user_id: i_u)
end

100.times do |i|
    unit_cost = Faker::Number.normal(mean: 250, standard_deviation: 100)
    unit_price = Faker::Number.normal(mean: 850, standard_deviation: 200)
    i_ct = Faker::Number.within(range: 1..1400)
    i_c = Faker::Number.within(range: 1..3)
    i_p = Faker::Number.within(range: 1..65)
    
    Cost.create!(unit_cost: unit_cost,
                 unit_price: unit_price,
                 cal_time_id: i_ct,
                 channel_id: i_c,
                 product_id: i_p)
end
