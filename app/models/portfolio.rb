class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image
    def self.rails
        where(subtitle: 'Ruby on Rails')
        end
scope :codeigniter, -> { where(subtitle: 'Code Igniter')}
end
