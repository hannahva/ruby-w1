# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find
  puts "enter 'quit' at any time to exit the program"
  puts "enter 'find (insert id)' to find specific candidate"
  arg_array = gets.chomp.split(' ')
  id = arg_array[1].to_i
  if arg_array.include? 'quit'
    abort ('program ended')
  else
    @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      end
    end
    "no candidate with that id found"
  end
end

def qualified_candidates(candidates)
  puts "enter 'all' to see a list of all candidates, or 'qualified' to see only a selection"
  arg_array = gets.chomp
  if arg_array.include? 'quit'
    abort ('program ended')
  elsif arg_array.include? 'qualified'
    candidates.select { |candidate|
      experienced?(candidate) &&
      github_points?(candidate) &&
      ruby_python?(candidate) &&
      applied_by?(candidate) &&
      eighteen?(candidate)
    }
  elsif arg_array.include? 'all'
    return candidates
  end
end


def ordered_by_qualifications(candidates)
  # - makes it descending rather than ascending. using .reverse method apparently makes it have to traverse the collection again instead of immediate negation
  candidates.sort_by! { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end

# helper functions defined below
def experienced?(candidate)
  experience = candidate[:years_of_experience]
  if experience >= 2
    true
  else
    false
  end
end

def github_points?(candidate)
  points = candidate[:github_points]
  if points >= 100
    true
  else
    false
  end
end

def ruby_python?(candidate)
  candidate[:languages].include?('Ruby' || 'Python')
end

def applied_by?(candidate)
  date_applied = candidate[:date_applied]
  if date_applied > 15
    true
  else
    false
  end
end

def eighteen?(candidate)
  if candidate[:age] >= 18
    true
  else
    false
  end
end







