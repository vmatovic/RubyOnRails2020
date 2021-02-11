module UsersHelper
    def gravatar_for(user)
        gravatar_id  = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
    
    def countries_names
        names = []
        Country.all.each do |con|
            c1 = []
            c1.append(con.name)
            c1.append(con.id)
            names.append(c1)
        end
        names
    end
end
