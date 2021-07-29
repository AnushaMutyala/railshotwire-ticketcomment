class Comment < ApplicationRecord
  belongs_to :ticket

  has_rich_text :content

  #after_create_commit :broadcast_to_ticket

  private

  
  broadcasts_to :ticket
end