# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Experience.create(label: "Marqeta, Inc", location: "Oakland, CA", position: "Software Engineer, Web")

nfx = Experience.create(label: "NFX Guild", location: "San Francisco Bay Area", position: "Software Engineer")
nfx.descriptions << [
  Description.create(item_type: "experience", text: "Part of the core team (3 Eng, 1 PM) that built and launched Signal - a network of startup founders and investors that leverages its Gmail graph to add efficiency and transparency to the fundraising process"),
  Description.create(item_type: "experience", text: "Maintained religious adherence to agile methodologies by engineering and participating in product development and MVP scoping"),
  Description.create(item_type: "experience", text: "Implemented features in both the API and UI (React, Ruby on Rails, and GraphQL)")
]


ascendify = Experience.create(label: "Ascendify", location: "San Francisco, CA", position: "Web Developer")
ascendify.descriptions << [
  Description.create(item_type: "experience", text: "Build modern, responsive-design websites for our clients from scratch that leverage the company's widget technology. These skills include but are not limited to HTML5, CSS3, Javascript and jQuery."),
  Description.create(item_type: "experience", text: "Ensure all talent communities are SEO optimized to ensure a successful rollout"),
  Description.create(item_type: "experience", text: "Work with clients directly on their talent community requests "),
  Description.create(item_type: "experience", text: "Offer design recommendations that clients are pleased with"),
  Description.create(item_type: "experience", text: "Complete tickets with a high degree of accuracy and speed"),
  Description.create(item_type: "experience", text: "Work with the Engineering team during monthly code releases to ensure talent communities receive necessary code updates")
]



# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
# Description.create(item_type: "experience", text: "")
