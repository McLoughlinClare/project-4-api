[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end
School.create!([
  { name: "Cheney School" },
  { name: "Evelyn Grace Academy" },
  { name: "Sir Simon Milton UTC" }
  ])

Teacher.create!([
  { name: "Miss McLoughlin", email: "cmc@email.com", password: "password", password_confirmation: "password", school_id: 1 },
  { name: "Mr O'Connor", email: "oconnor@email.com", password: "password", password_confirmation: "password", school_id: 2 },
  { name: "Dr Smith", email: "smith@email.com", password: "password", password_confirmation: "password", school_id: 3 }
])

Student.create!([
  { first_name: "Khai", last_name: "Taylor", email: "khai@email.com", password: "password", password_confirmation: "password", school_id: 1 },
  { first_name: "Tessa", last_name: "Micheals", email: "tessa@email.com", password: "password", password_confirmation: "password", school_id: 2 },
    { first_name: "Kayley", last_name: "Smith", email: "kayley@email.com", password: "password", password_confirmation: "password", school_id: 3 }
])


Topic.create!([
  { name: "Particles and Radiation", icon: "particles.png" },
  { name: "Electromagnetic Radiation and Quantum phenomena", icon: "quantum.png" },
  { name: "Current Electricity", icon: "Electricity.png" },
  { name: "Mechanics", icon: "mechanics.png" },
  { name: "Materials", icon: "materials.png" },
  { name: "Waves", icon: "waves.png"  }
  ])

Challenge.create!([
  { title: "Carbon Charge", question: "What is the total charge of a carbon nucleus in electronic charge units?", answer:"+6e", topic_id: 1},
  { title: "Energy of Light", question: "What is the energy of a photon with a wavelength of 500nm in eV?", answer:"2.5eV", topic_id: 2},
  { title: "Coulombs Law", question: "A current of 2 A flows for 30 seconds through a lamp. How much charge has moved?", answer:"60C", topic_id: 3},
  { title: "Newton's second law", question: "What is the force of an object with a mass of 10kg moving at 2ms^-1", answer:"20N", topic_id: 4},
  { title: "Density", question: "What is the density of an object with a mass of 20kg and a volume of 10", answer:"2", topic_id: 5},
  { title: "Density", question: "What is the speed of a wave with a frequency of 100Hz and a wavelength of 2m", answer:"2000m/s", topic_id: 6}
  ])

Solution.create!([
  { challenge_id: 1, student_id: 1, answer:"+6e", correct:true}
  ])
