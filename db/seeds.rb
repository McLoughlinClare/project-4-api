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
  { first_name: "Kayley", last_name: "Smith", email: "kayley@email.com", password: "password", password_confirmation: "password", school_id: 3 },
  { first_name: "Crystal", last_name: "Smith", email: "crystal@email.com", password: "password", password_confirmation: "password", school_id: 3 },
  { first_name: "Simon", last_name: "jones", email: "simon@email.com", password: "password", password_confirmation: "password", school_id: 2 },
  { first_name: "Emily", last_name: "Jordan", email: "emily@email.com", password: "password", password_confirmation: "password", school_id: 1 },
  { first_name: "Becca", last_name: "Thatcher", email: "becca@email.com", password: "password", password_confirmation: "password", school_id: 1},
  { first_name: "Ruhena", last_name: "Uddin", email: "ruhena@email.com", password: "password", password_confirmation: "password", school_id: 2 },
  { first_name: "Clare", last_name: "Reid", email: "clare@email.com", password: "password", password_confirmation: "password", school_id: 2 }
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
  { title: "Proton Charge", question: "Calculate the specific charge of a proton particle", answer:"9.58x10^7 CKg^-1", topic_id: 1},
  { title: "Alpha Charge", question: "An alpha particle has the same nuclues as a Helium nucleus, Calculate the specific charge of an alpha particle", answer:"2000m/s", topic_id: 1},
  { title: "Nitrogen Charge", question: "Calculate the specific charge of a nitrogen nucleus.", answer:"2000m/s", topic_id: 1},
  { title: "rest energy of an antiproton", question: "An antiproton has a rest energy of 938MeV, what is it's rest energy in Joules?", answer:"2000m/s", topic_id: 6},
  { title: "rest energy of a neutron", question: "A neutron has a rest energy of 939MeV, what is it's rest energy in Joules?", answer:"2000m/s", topic_id: 6},
  { title: "rest energy of an electron", question: "An electron has a rest energy of 0.511MeV, what is it's rest energy in Joules?", answer:"2000m/s", topic_id: 6},
  { title: "Electron-Positron annihilation", question: "Calculate the maximum wavelength of one of the photons produced when an electron and a positron annihilate each other", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 9.84x10^-14J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 7.65x10^-14J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 0.009x10^-16J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 9.93x10^-14J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 10.11x10^-12J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "frequency of photon", question: "A photon produces an electron-positron pair, each with 10.18x10^-13J of energy, calculate the frequency of the photon", answer:"2000m/s", topic_id: 1},
  { title: "accelerated electron", question: "An electron is accelerated through a potential difference of 12.1 V, how much kinetic energy has it gain in eV?", answer:"2000m/s", topic_id: 1},
  { title: "accelerated electron", question: "An electron is accelerated through a potential difference of 9.7 V, how much kinetic energy has it gain in eV?", answer:"2000m/s", topic_id: 1},
  { title: "accelerated electron", question: "An electron is accelerated through a potential difference of 10.7 V, how much kinetic energy has it gain in Joules?", answer:"2000m/s", topic_id: 1},
  { title: "accelerated electron", question: "An electron is accelerated through a potential difference of 15.3 V, how much kinetic energy has it gain in Joules?", answer:"2000m/s", topic_id: 1},
  { title: "accelerated electron", question: "An electron is accelerated through a potential difference of 9.86 V, how much kinetic energy has it gain in Joules?", answer:"2000m/s", topic_id: 1},
  { title: "Momentum of electron", question: "Calculate the momentum of an electron with a de Broglie wavelength of 590nm", answer:"2000m/s", topic_id: 1},
  { title: "Momentum of electron", question: "Calculate the momentum of an electron with a de Broglie wavelength of 620nm", answer:"2000m/s", topic_id: 1},
  { title: "Momentum of electron", question: "Calculate the momentum of an electron with a de Broglie wavelength of 0.0008mm", answer:"2000m/s", topic_id: 1},
  { title: "Momentum of electron", question: "Calculate the momentum of an electron with a de Broglie wavelength of 732nm", answer:"2000m/s", topic_id: 1},
  { title: "travelling electrons", question: "Electrons travelling ata speed of 3.50 x 10^6m/s, what is their wavelength?", answer:"2000m/s", topic_id: 1},
  { title: "Momentum brainteaser", question: "A particle has a de broglie wavelength of 8.87x10^-10m, if the particle's momentum is increased by 25%, but its mass is halved, what is the particles new wavelength?", answer:"2000m/s", topic_id: 1},
  { title: "Density", question: "What is the speed of a wave with a frequency of 100Hz and a wavelength of 2m", answer:"2000m/s", topic_id: 6}
  ])

Solution.create!([
  { challenge_id: 1, student_id: 1, answer:"+6e", correct:true},
  { challenge_id: 1, student_id: 2, answer:"+6e", correct:true},
  { challenge_id: 1, student_id: 3, answer:"+6e", correct:true},
  { challenge_id: 2, student_id: 2, answer:"2.5eV", correct:true},
  { challenge_id: 3, student_id: 2, answer:"60C", correct:true},
  { challenge_id: 2, student_id: 3, answer:"2.5eV", correct:true},
  { challenge_id: 2, student_id: 1, answer:"2.5", correct:false},
  { challenge_id: 1, student_id: 4, answer:"+6e", correct:true},
  { challenge_id: 1, student_id: 5, answer:"+6e", correct:true},
  { challenge_id: 1, student_id: 6, answer:"+6e", correct:true},
  { challenge_id: 2, student_id: 5, answer:"2.5eV", correct:true},
  { challenge_id: 3, student_id: 5, answer:"2.5eV", correct:true},
  { challenge_id: 4, student_id: 5, answer:"2.5eV", correct:true},
  { challenge_id: 3, student_id: 6, answer:"2.5eV", correct:true},
  { challenge_id: 4, student_id: 6, answer:"2.5eV", correct:true},
  { challenge_id: 5, student_id: 6, answer:"2.5eV", correct:true}

  ])
