# frozen_string_literal: true

class Remain < ApplicationRecord
  belongs_to :user
  validates :user_id, :user, presence: true
end
