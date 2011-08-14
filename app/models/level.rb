class Level < ActiveRecord::Base
  enumerates do |e|
    e.value :name => 'Easy'
    e.value :name => 'Intermediate'
    e.value :name => 'Hard'
  end
end
