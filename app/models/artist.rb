require_relative "concerns/slug_module.rb"

class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  include SlugThis::InstanceMethods
  extend SlugThis::ClassMethods

end
