class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :player

  def self.favourites
    Subscription.all.select { |sub| sub.trans_type }
  end

  def self.favourite_notes
    favs = []

    favourites.each do |sub|
      note = Note.find_by_player_id(sub.id)
     if note 
      favs.push(note) 
     end
    end
    
    favs
  end
end
