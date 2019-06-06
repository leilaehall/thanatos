puts 'Cleaning database...'
User.destroy_all
Company.destroy_all
Delegate.destroy_all
FuneralPreference.destroy_all
SocialPlatform.destroy_all

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
    name: "Flowers for funerals",
    address: 'Seymour rd, Hampton Wick, KT1',
    company_email: 'flowersforfuneral@gmail.com',
    description:'The tragic news that someone near or dear has passed will never come at a good time, but it is important you are able to send sympathy flowers to the family, friends, colleagues or loved ones to say you are thinking of them at what is most certainly a difficult time.',
    category: 'florist',
    logo: "florist1.jpg",
    phone: "+44 1632 960999"
  },
  {
    name: "FuneralCar",
    address: 'High Street, Teddington, KT1',
    company_email: 'funeralcar@mail.uk',
    description: 'We deal exclusively with the motoring needs of the funeral industry and understand your unique needs. If you need assistance with finding the right funeral vehicle or associated parts, services or accessories then talk to us today.',
    category: 'car rental',
    logo: "car2.jpg",
    phone: "+44 1632 960066"
  },
  {
    name: "Beggs funeral home",
    address: 'Seymour rd, Hampton Wick, KT1',
    company_email: 'bfh@gmail.uk',
    description: 'We invite you to browse through our site and learn about our firm, our family, and what services we can offer to you and your family. We are very proud of our tradition, our facilities, and the services that we provide. Please feel free to visit our website often, and if a question arises, do not hesitate to call on us. Blessing to each of you.',
    category: 'funeral home',
    logo: "funeralhome3.jpg",
    phone: "+44 1632 988060"
  },
  {
    name: "Luxury in motion",
    address: 'King Street, Twickenham, London, TW1',
    company_email: 'linm@gmail.uk',
    description: 'We at Luxury in motion are willing to help you with any requirements  that’s you may have. With an understanding team we are certain to meet your requirements for the day.',
    category: 'car rental',
    logo: "car3.jpg",
    phone: "+44 1632 988060"
  },
  {
    name: "InterFlora",
    address: 'High Street, Hampton Wick, KT1',
    company_email: 'interflora@gmail.uk',
    description: 'At this difficult time, we can at least make choosing, ordering and sending funeral flowers a little easier for you. Choose from our carefully selected range of classically beautiful funeral flowers and just let us know where we need to deliver them. ',
    category: 'florist',
    logo: "florist2.jpg",
    phone: "+44 1632 988060"
  },
  {
    name: "Richmond funerals",
    address: 'Church Street, Twickenham, TW1',
    company_email: 'richmond@gmail.uk',
    description: 'We invite you to browse through our site and learn about our firm, our family, and what services we can offer to you and your family. We are very proud of our tradition, our facilities, and the services that we provide. Please feel free to visit our website often, and if a question arises, do not hesitate to call on us. Blessing to each of you.',
    category: 'funeral home',
    logo: "funeralhome4.jpg",
    phone: "+44 1632 988060"
  },
  {
    name: "Harrison Funerals",
    address: 'King Street, Twickenham, London, TW1',
    company_email: 'harrisonfuneralh@gmail.com',
    description: 'HFH is designed specifically for the provision of funeral services and related functions including receptions. Its design is meant to ensure privacy to each family during every phase of their time at the funeral home. This includes arrangement consultation, visitation, funeral service and reception. Our facility is intended to be warm, open, airy and positive.',
    category: 'funeral home',
    logo: "funeralhome1.jpg",
    phone: "+44 1632 960777"
  },
  {
    name: "Crystal Chauffeurs",
    address: 'St Margarets Road, Twickenham, TW1',
    company_email: 'crystalchauffeurs@mail.uk',
    description: 'We at Crystal Chauffeurs are willing to help you with any requirements  that’s you may have. With an understanding team we are certain to meet your requirements for the day.',
    category: 'car rental',
    logo: "car1.jpg",
    phone: "+44 1882 960068"
  },
  {
    name: "Walker Funeral Home",
    address: 'Church Street, Twickenham, TW1',
    company_email: 'walkerfh@gmail.com',
    description: 'We invite you to browse through our site and learn about our firm, our family, and what services we can offer to you and your family. We are very proud of our tradition, our facilities, and the services that we provide. Please feel free to visit our website often, and if a question arises, do not hesitate to call on us. Blessing to each of you.',
    category: 'funeral home',
    logo: "funeralhome2.jpg",
    phone: "+44 1632 960068"
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
    collection_for_charity: 'Dementia Awareness',
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
    collection_for_charity: 'Breast Cancer Awareness',
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
    collection_for_charity: 'Unicef',
    user: users[2]
  }
]
funeral_preferences = FuneralPreference.create!(funeral_preferences_attributes)

puts "Creating social platforms..."
social_platforms_attributes = [
  {
    channel: 'Facebook',
    choice: "Cancel Account",
    username: 'davidj',
    user: users[0]
  },
  {
    channel: 'Instagram',
    choice: "Memorialize Account",
    username: 'maggieatwood',
    user: users[1]
  }
]
social_platform_preferences = SocialPlatform.create!(social_platforms_attributes)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
