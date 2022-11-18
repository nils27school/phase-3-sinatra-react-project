puts "🌱 Seeding spices..."

# Seed your database here
puts "Destroying glassware..."
Glassware.destroy_all

rocks_glass = Glassware.create(glass_type: "Rocks Glass", image: "Rocks_Glass")

coupe = Glassware.create(glass_type: "Coupe", image: "Coupe")

collins_glass = Glassware.create(glass_type: "Collins Glass", image: "Collins_Glass")

martini_glass = Glassware.create(glass_type: "Martini Glass", image: "Martini_Glass")

highball_glass = Glassware.create(glass_type: "Highball Glass", image: "Highball_glass")

shot_glass = Glassware.create(glass_type: "Shot Glass", image:"Shot_Glass")


# t.string :spirit_name,
# t.integer :spirit_id

puts "Destroying spirits..."
Spirit.destroy_all

whiskey = Spirit.create(
    spirit_name: "Whiskey",
    description: "A 51% corn-based mash, Barreled at 125 proof or less, Aged in an oak barrel")

tequila = Spirit.create(
    spirit_name: "Tequila",
    description: "Tequila comes from the heart of an agave plant once distilleries bake and juice it")

vodka = Spirit.create(
    spirit_name: "Vodka",
    description: "Vodka does not typically age, and the color remains clear. You will find vodkas with alcohol contents ranging from 40 to 50%.")

rum = Spirit.create(
    spirit_name: "Rum",
    description: "Sugarcane or molasses ferment to create rum.")

gin = Spirit.create(
    spirit_name: "Gin",
    description: "Made from neutral grains such as rye, barley, wheat and corn, gin remains unaged, and is therefore clear, like vodka.")
    # The herbal and pine-like aroma of gin comes from the inclusion of botanical ingredients like juniper berries.
brandy = Spirit.create(
    spirit_name: "Brandy",
    description: "Brandy is made with fermented fruit instead of grain.")

# t.string :name,
# t.string :glassware,
# t.string :spirit,
# t.string :description

puts "Destroying cocktails..."
Cocktail.destroy_all

    Cocktail.create(
        name: "Old Fashion",
        glassware_id: rocks_glass.id,
        spirit_id: whiskey.id,
        ingredients: "Whiskey, Sugar, Angostura bitters, orange slice",
        description: "A gentleman's bourbon based drink on the rocks.",
        image: "Old_fashion")

    Cocktail.create(
        name: "Margarita",
        glassware_id: coupe.id,
        spirit_id: tequila.id,
        ingredients: "Tequila, Lime Juice, sugar, triple sec",
        description: "Perfect drink for the beach.",
        image: "MargaritaHighball")

    Cocktail.create(
        name: "Cosmo",
        glassware_id: coupe.id,
        spirit_id: vodka.id,
        ingredients: "Vodka, Cranberry juice, triple sec, lime juice",
        description: "A refreshing pink drink.",
        image: "Cosmo")

    Cocktail.create(
            name: "Whiskey Sour",
            glassware_id: collins_glass.id,
            spirit_id: whiskey.id,
            ingredients: "Whiskey, Lemon or lime juice, simple syrup",
            description: "A sour whiskey drink",
            image: "Whiskey_sour.img")

    Cocktail.create(
                name: "Mint Julep",
                glassware_id: collins_glass.id,
                spirit_id: whiskey.id,
                ingredients: "Whiskey, Muddled mint leaves and sugar",
                description: "A refreshing mint drink",
                image: "Mint_julep")

    Cocktail.create(
                    name: "French 75",
                    glassware_id: coupe.id,
                    spirit_id: brandy.id,
                    ingredients: "Brandy, Lemon juice, simple syrup, and champagne",
                    description: "A class, strong drink, with elegance",
                    image: "French_75.img")

    Cocktail.create(
        name: "Martini",
        glassware_id: martini_glass.id,
        spirit_id: vodka.id,
        ingredients: "Vodka, Dry vermouth and bitters, garnish with olive or lemon twist",
        description: "A drink for James Bond",
        image: "Martini.img")
                        
    Cocktail.create(
        name: "Mojito",
        glassware_id: collins_glass.id,
        spirit_id: rum.id,
        ingredients: "Rum, Muddled mint, sugar, lime, soda water",
        description: "Great drink for a summer day, refreshing",
        image: "Mojito.img")
    
        Cocktail.create(
            name: "Dark and Stormy",
            glassware_id: collins_glass.id,
            spirit_id: rum.id,
            ingredients: "Rum, Ginger beer and bitters",
            description: "Simple, warm, refreshing",
            image: "Dark_and_stormy.img")

            Cocktail.create(
                name: "Gin and Tonic",
                glassware_id: collins_glass.id,
                spirit_id: gin.id,
                ingredients: "Gin, Lime and tonic water",
                description: "A simple, floral, and refreshing beverage",
                image: "Gin_and_tonic.img")

                Cocktail.create(
                    name: "Paloma",
                    glassware_id: collins_glass.id,
                    spirit_id: tequila.id,
                    ingredients: "Tequila, Grapefruit juice and lime juice",
                    description: "Refreshing and fruity drink",
                    image: "Paloma.img")
        # t.string :glass_type,
        # t.integer :glass_id

 

puts "✅ Done seeding!"
