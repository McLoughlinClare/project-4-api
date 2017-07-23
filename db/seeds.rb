[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  { username: "mickyginger", firstname: "Mike", lastname: "Hayden" },
  { username: "eisacke", firstname: "Emily", lastname: "Isacke" },
  { username: "markyjangles", firstname: "Marc", lastname: "De Vois" }
])

School.create!([
  { name: "Cheney School" },
  { name: "Evelyn Grace Academy" },
  { name: "Sir Simon Milton UTC" }
  ])
Topic.create!([
  { name: "Particles and Radiation"},
  { name: "Electromagnetic Radiation and Quantum phenomena"},
  { name: "Current Electricity"},
  { name: "Mechanics"},
  { name: "Materials"},
  { name: "Waves" }
  ])

Challenge.create!([
  { title: "Carbon Charge", question: "What is the total charge of a carbon nucleus in electronic charge units?", answer:"+6e", topic_id: 1}
  ])

Solution.create!([
  { challenge_id: 1, student_id: 1, answer:"+6e", correct:true}
  ])
