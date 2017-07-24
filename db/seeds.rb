[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end
School.create!([
  { name: "Cheney School" },
  { name: "Evelyn Grace Academy" },
  { name: "Sir Simon Milton UTC" }
  ])

Teacher.create!([
  { name: "Miss Baxter", email: "baxter@email.com", password: "password", password_confirmation: "password", school_id: 1 },
  { name: "Mr O'Connor", email: "oconnor@email.com", password: "password", password_confirmation: "password", school_id: 2 },
  { name: "Dr Smith", email: "smith@email.com", password: "password", password_confirmation: "password", school_id: 3 }
])

Student.create!([
  { first_name: "Khai", last_name: "Taylor", email: "khai@email.com", password: "password", password_confirmation: "password", school_id: 1 },
  { first_name: "Tessa", last_name: "Micheals", email: "tessa@email.com", password: "password", password_confirmation: "password", school_id: 2 },
    { first_name: "Kayley", last_name: "Smith", email: "kayley@email.com", password: "password", password_confirmation: "password", school_id: 3 }
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
