# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
# find(4)
# experienced?( {
#   id: 5,
#   years_of_experience: 4,
#   github_points: 293,
#   languages: ['C', 'Ruby', 'Python', 'Clojure'],
#   date_applied: 5.days.ago.to_date,
#   age: 26
# })
# qualified_candidates(@candidates)
# applied_date( {
#     id: 5,
#     years_of_experience: 4,
#     github_points: 293,
#     languages: ['C', 'Ruby', 'Python', 'Clojure'],
#     date_applied: 5.days.ago.to_date,
#     age: 26
#   })
ordered_by_qualifications(@candidates)

# pp @candidates
