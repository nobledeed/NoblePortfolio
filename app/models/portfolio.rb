class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image
    def self.rails
        where(subtitle: 'Ruby on Rails')
        
    end
    
    scope :codeigniter, -> { where(subtitle: 'Code Igniter')}

    after_initialize :set_defaults


    def set_defaults
        self.main_image ||= "https://place-hold.it/600x400" 
        self.thumb_image ||= "https://place-hold.it/350x150"

    end
end
