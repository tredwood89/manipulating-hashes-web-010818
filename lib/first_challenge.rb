def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

    #contacts["Freddy Mercury"][:favorite_icecream_flavors].delete_if {|str| str == "strawberry"}

    contacts.collect do |name, info| #iterate thru 1st level
      info.collect do |info, value| #iterate thru 2nd level
        if info == :favorite_icecream_flavors #:F_I_F points to an array
          value.delete_if {|str| str == "strawberry"} #delete_if works on arrays
        end
      end
    end

  contacts
end
