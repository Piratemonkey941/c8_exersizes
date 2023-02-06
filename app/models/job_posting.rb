class JobPosting < ApplicationRecord
    validates :title, :company, :salary, presence: true
end