# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessible :firstname, :lastname, :email
  validates :firstname, :presence => true,
                    :length   => { :maximum => 50 }
  validates :lastname, :presence => true,
                    :length   => { :maximum => 50 }
  validates  :email, :presence => true,
                      :format => {:with => email_regex},
                    :uniqueness => { :case_sensitive => false }

end
