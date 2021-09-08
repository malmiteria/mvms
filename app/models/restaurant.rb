class Restaurant < ActiveRecord::Base
  has_many :votes

  def self.most_voted
    winner = select('id, name, (SELECT count(*) FROM votes WHERE votes.restaurant_id=id) as vote_count').
    group('id').
    order('vote_count DESC').
    limit(1).to_a[0]
    if winner
      winner.name
    else
      nil
    end
  end
end
