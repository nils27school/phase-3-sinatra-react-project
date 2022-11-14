puts "🌱 Seeding spices..."

# Seed your database here
puts "Destroying glassware..."
Glassware.destroy_all

Glassware.create(
    glass_type: "Rocks Glass"
)

Glassware.create(
    glass_type: "Coupe"
)


# t.string :spirit_name,
# t.integer :spirit_id

puts "Destroying spirits..."
Spirits.destroy_all

Spirits.create(
    spirit_name: "Bourbon",
)

Spirits.create(
    spirit_name: "Tequila",
)

Spirits.create(
    spirit_name: "Vodka",
)


# t.string :name,
# t.string :glassware,
# t.string :spirit,
# t.string :description

puts "Destroying cocktails..."
Cocktail.destroy_all

    Cocktail.create(
        name: "Old Fashion",
        glassware_id: 1,
        spirit_id: 1,
        ingredients: "Sugar, Angostura bitters, orange slice",
        description: "A gentleman's bourbon based drink on the rocks.")

        Cocktail.create(
        name: "Margarita",
        glassware_id: 2,
        spirit_id: 2,
        ingredients: "Lime Juice, sugar, triple sec",
        description: "Perfect drink for the beach.")

        Cocktail.create(
        name: "Cosmo",
        glassware_id: 2,
        spirit_id: 3,
        ingredients: "Cranberry juice, triple sec, lime juice",
        description: "A refreshing pink drink.")


        # t.string :glass_type,
        # t.integer :glass_id

 

puts "✅ Done seeding!"
