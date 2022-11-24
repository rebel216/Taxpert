# frozen_string_literal: true

class User < ApplicationRecord
  validates :phone, uniqueness: true

  def email_required?
    false
  end

  def email_changed?
    false
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
