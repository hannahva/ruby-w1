# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here
# puts experienced?(@candidates[0])

puts find

# puts github_points?(@candidates[0])

# puts ruby_python?(@candidates[0])

# puts applied_by?(@candidates[0])

# puts eighteen?(@candidates[0])

# binding.pry

pp qualified_candidates(@candidates)
# pp ordered_by_qualifications(@candidates)