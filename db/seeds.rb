# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(id: 1, brand: 'Tatcha', name: 'The Deep Cleanse', use_for: 'Cleanser', skintype: 'Oily', user_id: 1)
Product.create(id: 2, brand: 'Tatcha', name: 'The Water Cream', use_for: 'Moisturizer', skintype: 'Oily', user_id: 1)
Product.create(id: 3, brand: 'AprilSkin', name: 'Carrot Acne Foam Cleanser', use_for: 'Cleanser', skintype: 'Oily / Acne Prone', user_id: 1)
Product.create(id: 4, brand: 'AprilSkin', name: 'Carrot Blemish Cream', use_for: 'Moisurizer', skintype: 'Oily / Acne Prone', user_id: 1)
Product.create(id: 5, brand: 'AprilSkin', name: 'Carrot Blemish Serum', use_for: 'Serum', skintype: 'Oily / Acne Prone', user_id: 1)
Product.create(id: 6, brand: 'AprilSkin', name: 'Carrot Blemish Clear Vita Pads', use_for: 'Treatement', skintype: 'Oily / Acne Prone', user_id: 1)
Product.create(id: 7, brand: 'AprilSkin', name: 'Calendula PHA Peel Pads', use_for: 'Treatement', skintype: 'All', user_id: 1)
Product.create(id: 8, brand: 'AprilSkin', name: 'Calendula Peel Off', use_for: 'Mask', skintype: 'All', user_id: 1)
Product.create(id: 9, brand: 'AprilSkin', name: 'Artemisia Rice Toner', use_for: 'Toner', skintype: 'All', user_id: 1)
Product.create(id: 10, brand: 'DIY', name: 'African Black Soap', use_for: 'Cleanser', skintype: 'Oily/Acne Prone', user_id: 1)
Product.create(id: 11, brand: 'Farmacy', name: 'Green Clean', use_for: 'Oil Cleanser', skintype: 'All', user_id: 1)
Product.create(id: 12, brand: 'SK-II', name: 'PITERA Essence', use_for: 'Essence', skintype: 'All', user_id: 1)
Product.create(id: 13, brand: 'Fresh', name: 'ROSE Deep Hydration Facial Toner', use_for: 'Toner', skintype: 'All', user_id: 1)
Product.create(id: 14, brand: 'Fresh', name: 'Kombucha Antioxidant Essence', use_for: 'Essence', skintype: 'All', user_id: 1)
Product.create(id: 15, brand: 'Fresh', name: 'Umbrian Clay Purifying Facial Toner', use_for: 'Toner', skintype: 'All', user_id: 1)
Product.create(id: 16, brand: 'The Persistent Pestle', name: 'Hygeia Daily Cleanser', use_for: 'Cleanser', skintype: 'All', user_id: 1)
Product.create(id: 17, brand: 'The Persistent Pestle', name: 'Pele Pore Purge Mask', use_for: 'Mask', skintype: 'All', user_id: 1)
Product.create(id: 18, brand: 'The Persistent Pestle', name: 'Kymopoleia Cream', use_for: 'Moisturizer', skintype: 'All', user_id: 1)
Product.create(id: 19, brand: 'The Persistent Pestle', name: 'Prophetissa Rose Serum', use_for: 'Serum / Toner', skintype: 'All', user_id: 1)
Product.create(id: 20, brand: 'Laneige', name: 'Lip Sleeping Mask', use_for: 'Lip Treatement', skintype: 'All', user_id: 1)
Product.create(id: 21, brand: 'Aztec Secret', name: 'Indian Healing Clay', use_for: 'Mask', skintype: 'Oily / Acne Prone', user_id: 1)
Product.create(id: 22, brand: 'Sephora', name: 'Bamboo Mask Stick - Mattifying', use_for: 'Mask', skintype: 'Oily', user_id: 1)
Product.create(id: 23, brand: 'Sephora', name: 'Charcole Mask Stick - Smoothing', use_for: 'Mask', skintype: 'All', user_id: 1)
Product.create(id: 24, brand: 'Sephora', name: 'Spirulina Mask Stick - Purifying', use_for: 'Mask', skintype: 'All', user_id: 1)

Routine.create(id: 1, name: 'Busy Morning Routine', skintype: 'Oily/Acne Prone', user_id: 1)

Step.create(id: 1, name: 'Cleanse', duration: 3, product_id: 1, routine_id: 1)
Step.create(id: 2, name: 'Tone', duration: 1, product_id: 9, routine_id: 1)
Step.create(id: 3, name: 'Moisturize', duration: 1, product_id: 2, routine_id: 1)

User.create(id: 1, username: 'hydrangea', age: 29 , gender: 'non-binary', skintype: 'Oily / Acne Prone', password_digest: 'Moontide90')
