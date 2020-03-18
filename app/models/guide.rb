class Guide < ActiveRecord::Base
    validates :plantname, presence: true
    validates :description, presence: true
end