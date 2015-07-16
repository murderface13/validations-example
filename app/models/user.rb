class User < ActiveRecord::Base

  validates :first_name, :planet, :country, presence: true

  validates :planet_no, numericality: { 
                                        only_integer: true,
                                        greater_than: 0,
                                        less_than_or_equal_to: 8
                                      }

  validates :galaxy, absence: true

  validates :planet, inclusion: { in: %w(mercury venus earth mars jupiter saturn uranus neptune),
                                  message: "%{value} is not a valid planet."
                                }

  validates :planet, exclusion: { in: %w(pluto),
                                  message: "%{value} is not a planet."
                                }
      # t.string :first_name
      # t.string :last_name
      # t.string :galaxy
      # t.string :planet
      # t.integer :planet_no
      # t.string :country
      # t.string :city
      # t.float :city_citizens
      # t.string :street
      # t.string :house


end
