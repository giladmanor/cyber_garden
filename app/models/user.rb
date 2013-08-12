class User < ActiveRecord::Base
  has_many :punch_cards
  
  
  def self.generate_key
    o =  ([('A'..'Z')]+[(0..9)]).map{|i| i.to_a}.flatten  
    (0..50).map{ o[rand(o.length)]}.join
  end
end
