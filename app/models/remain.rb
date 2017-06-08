# frozen_string_literal: true

class Remain < ApplicationRecord
  belongs_to :user

  validates_inclusion_of :entombment, in: %w( cremated cemetary other ), message: "entombment %{value} is not included in the list"

  validates :user_id, :user, presence: true
  validates :given_name, presence: true
  validates :sur_name, presence: true
  validates :entombment, presence: true
  validates :location, presence: true
  validates :comments, presence: true
  validates :dod, presence: true
  validates :relation_desc, presence: true
end
