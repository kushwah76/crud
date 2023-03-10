=begin
class Article < ApplicationRecord
  #before_create :update_article_name
 
  before_validation :remove_whitespaces

  # has_many:comments
  has_many :comments, dependent: :destroy

  before_validation :update_article_name
  after_destroy :destroy_title

    #validates :title, presence: true
    # validates :title, format: { with: /\A[a-zA-Z]+\z/,
    #   message: "only allows letters" }
    # validates :title, inclusion: { in: %w(small medium large),
    #   message: "%{value} is not a valid size" }

    # validates :title, numericality: true
  #  validates :title,uniqueness:{case_sensitive: false}  
     validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    

    def remove_whitespaces
      title.strip!
    end
    def update_article_name
      self.title.downcase!
    end

  end
=end



class Article < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
