puts "🌱 Seeding spices..."

# Seed your database here
puts "Destroying glassware..."
Glassware.destroy_all

rocks_glass = Glassware.create(glass_type: "Rocks Glass")

coupe = Glassware.create(glass_type: "Coupe")


# t.string :spirit_name,
# t.integer :spirit_id

puts "Destroying spirits..."
Spirit.destroy_all

bourbon = Spirit.create(spirit_name: "Bourbon",)

tequila = Spirit.create(spirit_name: "Tequila",)

vodka = Spirit.create(spirit_name: "Vodka",)


# t.string :name,
# t.string :glassware,
# t.string :spirit,
# t.string :description

puts "Destroying cocktails..."
Cocktail.destroy_all

    Cocktail.create(
        name: "Old Fashion",
        glassware_id: rocks_glass.id,
        spirit_id: bourbon.id,
        ingredients: "Sugar, Angostura bitters, orange slice",
        description: "A gentleman's bourbon based drink on the rocks.",
        image: "Old_fashion.img")

        Cocktail.create(
        name: "Margarita",
        glassware_id: coupe.id,
        spirit_id: tequila.id,
        ingredients: "Lime Juice, sugar, triple sec",
        description: "Perfect drink for the beach.",
        image: "Margarita.img")

        Cocktail.create(
        name: "Cosmo",
        glassware_id: coupe.id,
        spirit_id: vodka.id,
        ingredients: "Cranberry juice, triple sec, lime juice",
        description: "A refreshing pink drink.",
        image: "Cosmo.img")


        # t.string :glass_type,
        # t.integer :glass_id

 

puts "✅ Done seeding!"
