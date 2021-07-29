class Ticket < ApplicationRecord
    has_rich_text :content
    has_many :comments, dependent: :destroy

    broadcasts
    broadcasts_to ->(ticket){:tickets}
    #after_create_commit {broadcast_append_to (ticket) { :tickets }}
    #after_update_commit { broadcast_replace_to (ticket) { :tickets }}
    #after_destroy_commit { broadcast_remove_to (ticket) { :tickets }}

    
    
end

