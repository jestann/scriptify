class Script < ActiveRecord::Base
    belongs_to :user
    has_many :characters
    has_many :acts
    has_many :scenes, through: :acts
end
