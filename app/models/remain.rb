# frozen_string_literal: true

class Remain < ApplicationRecord
  belongs_to :user

  validates :user_id, :user, presence: true
  validates :given_name, presence: true
  validates :sur_name, presence: true
  validates :entombment, presence: true
  validates :location, presence: true
end
