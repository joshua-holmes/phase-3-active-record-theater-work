require_relative "../config/environment"


puts "Destroying old data"
Audition.destroy_all
Role.destroy_all

puts "Creating roles..."
role1 = Role.create(character_name: "Borkus")
role2 = Role.create(character_name: "Boe")

puts "Creating auditions..."
audition1 = Audition.create(actor: "Bob", location: "NJ", phone: 9876543210, hired: false, role_id: role1.id)
audition2 = Audition.create(actor: "Bill", location: "NJ", phone: 8901234567, hired: false, role_id: role1.id)
audition3 = Audition.create(actor: "Babe", location: "NJ", phone: 1234567890, hired: true, role_id: role1.id)
audition4 = Audition.create(actor: "Buttler", location: "NJ", phone: 2581473690, hired: false, role_id: role2.id)
audition5 = Audition.create(actor: "Bart", location: "NJ", phone: 7418529630, hired: false, role_id: role2.id)


puts "SEEDING SUCCESSFUL"