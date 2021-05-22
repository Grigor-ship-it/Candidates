# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  puts id
  @candidates.each do |candidate|
    if candidate[:id] == id 
      return candidate
    end
  end
  puts "No candidate found with that ID"
  return nil
end

def experienced?(candidate)
  
  if candidate[:years_of_experience] >= 2

    return true
  else

    return false
  end
end

def age(candidate)
  
  if candidate[:age] >= 18

    return true
  else

    return false
  end
end

def github_points(candidate)
  
  if candidate[:github_points] >= 100

    return true
  else

    return false
  end
end

def languages(candidate)
  
  if candidate[:languages].include? "Ruby" || "Python"

    return true
  else

    return false
  end
end

def applied_date(candidate)
   
  if Date.today - candidate[:date_applied] >= 15 

    return false
  else

    return true
  end
end

def qualified_candidates(candidates)
  @candidates.each do |candidate|
  if experienced?(candidate) && age(candidate) && github_points(candidate) && languages(candidate) && applied_date(candidate) == true
    puts candidate
  end
  end
end

def ordered_by_qualifications(candidates)
 puts candidates.sort_by { |h | [h[:years_of_experience], h[:github_points]] }
  
end

# More methods will go below
