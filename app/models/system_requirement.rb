class SystemRequirement < ApplicationRecord
  include NameSearchable
  include Paginatable

  has_many :games, dependent: :restrict_with_error # vai ter vários games e vai dar erro se tentar
  # apagar esse system_requirement se estiver relacionado a um game.

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :operational_system, presence: true
  validates :storage, presence: true
  validates :processor, presence: true
  validates :memory, presence: true
  validates :video_board, presence: true
end
