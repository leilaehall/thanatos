puts 'Cleaning database...'
User.destroy_all
Company.destroy_all
Delegate.destroy_all
FuneralPreference.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    first_name: 'David',
    last_name: 'Jenkins',
    email: 'david@example.com',
    password: '123456',
    address: 'Westfields Avenue, London, SW13',
    gender: 'male',
    religion: 'Catholic',
    scenario: 'planning own affairs'
  },
  {
    first_name: 'Margaret',
    last_name: 'Atwood',
    email: 'margaret@example.com',
    password: '123456',
    address: 'Ruvigny Gardens, London, SW15',
    gender: 'female',
    religion: 'Catholic',
    scenario: 'planning own affairs'
  },
  {
    first_name: 'Rachel',
    last_name: 'Goldstein',
    email: 'rachel@example.com',
    password: '123456',
    address: 'Ellerker Gardens, Richmond, TW10',
    gender: 'female',
    religion: 'Jewish',
    scenario: 'planning for loved one'
  }
]

users = User.create!(users_attributes)
p users
puts 'Creating companies...'
companies_attributes = [
  {
    name: "Brenda's Bouquets",
    address: 'High Street, Hampton Wick, KT1',
    category: 'florist',
    logo: File.open(Rails.root.join("db/fixtures/companies/florist2.jpg"))
  },
  {
    name: "Ursula's Undertakers",
    address: 'King Street, Twickenham, London, TW1',
    category: 'funeral home',
    logo: File.open(Rails.root.join("db/fixtures/companies/funeralhome1.jpg"))
  },
  {
    name: "Clifford's Classy Cars",
    address: 'St Margarets Road, Twickenham, TW1',
    category: 'car rental',
    logo: File.open(Rails.root.join("db/fixtures/companies/car1.jpg"))
  },
  {
    name: "Maggie's Motors",
    address: 'High Street, Teddington, KT1',
    category: 'car rental',
    logo: File.open(Rails.root.join("db/fixtures/companies/car2.jpg"))
  },
  {
    name: "Freddie's Flowers",
    address: 'Royal Parade, Richmond, TW9',
    category: 'florist',
    logo: File.open(Rails.root.join("db/fixtures/companies/florist1.jpg"))
  },
  {
    name: "Cathy's Coffins",
    address: 'Church Street, Twickenham, TW1',
    category: 'funeral home',
    logo: File.open(Rails.root.join("db/fixtures/companies/funeralhome2.jpg"))
  }
]
companies = Company.create!(companies_attributes)

puts 'Creating delegates...'
delegates_attributes = [
  {
    first_name: 'Chris',
    last_name: 'Holland',
    email: 'chris@example.com',
    phone_number: '+447336472333',
    relationship: 'brother',
    user: users[1]
  },
  {
    first_name: 'Teresa',
    last_name: 'Groot',
    email: 'theresa@example.com',
    phone_number: '+447336232443',
    relationship: 'sister',
    user: users[1]
  },
  {
    first_name: 'Eve',
    last_name: 'Marks',
    email: 'eve@example.com',
    phone_number: '+447286448533',
    relationship: 'friend',
    user: users[2]
  },
  {
    first_name: 'Tessa',
    last_name: 'Jenkins',
    email: 'tessa@example.com',
    phone_number: '+447336472111',
    relationship: 'daughter',
    user: users[0]
  },
  {
    first_name: 'Millie',
    last_name: 'Jenkins',
    email: 'millie@example.com',
    phone_number: '+447336472988',
    relationship: 'daughter',
    user: users[0]
  }
]
delegates = Delegate.create!(delegates_attributes)

puts "Creating funeral preferences..."
funeral_preferences_attributes = [
  {
    category: 'burial',
    address: 'St Mary Magdalene, Church Walk, Richmond, TW9',
    guest_list: 'The Wilson family, The Butcher family, The Puttock family, Mr. Schuman, Mrs. Strepford',
    music: 'Knowing me, knowing you - ABBA',
    car: 'Rolls Royce',
    details: 'lavish, yet tasteful',
    dress: 'Hugo Boss suit',
    hairstyle: 'slicked back',
    embalming: 'true',
    make_up: 'some',
    speaker: 'Tessa Jenkins',
    reading: 'Millie Jenkins',
    charity: 'Dementia Awareness',
    user: users[0]
  },
  {
    category: 'cremation',
    address: 'St Matthias Church, Church Road, TW10',
    guest_list: 'Mr. Smith, Ms. Barnes, The Carr family, The Hazell family, The Chamberlain family',
    music: "Reelin' in the Years - Steely Dan",
    car: 'Mercedes Benz',
    details: 'very Irish',
    dress: 'brown loafers',
    hairstyle: 'none',
    embalming: 'false',
    make_up: 'none',
    speaker: 'Mark Wright',
    reading: 'Susan Forshaw',
    charity: 'Breast Cancer Awareness',
    user_id: users[1].id
  },
  {
    category: 'burial',
    address: 'Richmond Synagogue, Lichfield Gardens, Richmond, TW9',
    guest_list: 'The Stephenson family, The Eggenberg family, The Jacobs family, Mrs. Wintour, Mr. Enniful',
    music: "I'm Gonna Be (500 Miles) - The Proclaimers",
    car: 'VolksWagen Beetle',
    details: 'lighthearted and sentimental',
    dress: 'favourite red trousers',
    hairstyle: 'beach waves',
    embalming: 'true',
    make_up: 'red lipstick',
    speaker: 'Bill Clifford',
    reading: 'Martin Pullman',
    charity: 'Unicef',
    user: users[2]
  }
]
funeral_preferences = FuneralPreference.create!(funeral_preferences_attributes)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
