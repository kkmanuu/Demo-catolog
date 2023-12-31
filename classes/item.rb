require 'securerandom'
require 'date'
require 'json'

class Item
  attr_accessor :genres, :authors, :labels, :publish_date, :archived
  attr_reader :id

  def initialize(publish_date, archived: false)
    @id = SecureRandom.uuid
    @genres = []
    @authors = []
    @labels = []
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    current = Time.now.year - Date.parse(@publish_date).year
    current > 10
  end

  def move_to_archive?
    @archived = true if can_be_archived?
  end

  # Add a label to the item's labels collection
  def add_label(label)
    @labels << label
  end
end
