require 'machinist/mongoid'
require 'faker'

Contest.blueprint do
  name { Faker::Lorem.words.join(' ').capitalize }
  description { Faker::Lorem.sentence(25) }
  starting_on { Date.parse('May 23 2011') }
end

Entry.blueprint {}
