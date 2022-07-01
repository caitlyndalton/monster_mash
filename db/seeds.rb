# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Campaign.create(dm_id: 1, name: "Secrets of Fishin's Good", description: "The small coastal town of Fishin's Good - definitely nothing weird going on in that abandoned Council Building.")
Campaign.create(dm_id: 1, name: "Journey to the Underdark", description: "Ever wanted to take a quick road trip to the Underdark? Yeah, no one really does. Shit's dangerous. Lolth-Sworn Drow, fiends, worgs - oh my!")

Item.create(api_index: "bag-of-holding", equipment_category: "wondrous-items", name: "Bag of Holding", campaign_id: 1)
Item.create(api_index: "adamantine-armor", equipment_category: "armor", name: "Adamantine Armor", campaign_id: 1)
Item.create(api_index: "wand-of-magic-missiles", equipment_category: "wand", name: "Wand of Magic Missiles", campaign_id: 2)
Item.create(api_index: "eversmoking-bottle", equipment_category: "wondrous-items", name: "Eversmoking Bottle", campaign_id: 2)

Creature.create(api_index: "goblin", api_type: "humanoid", name: "Goblin", campaign_id: 1)
Creature.create(api_index: "gnoll", api_type: "humanoid", name: "Gnoll", campaign_id: 1)
Creature.create(api_index: "spider", api_type: "beast", name: "Spider", campaign_id: 1)
Creature.create(api_index: "worg", api_type: "monstrosity", name: "Worg", campaign_id: 2)
Creature.create(api_index: "imp", api_type: "fiend", name: "Imp", campaign_id: 2)
