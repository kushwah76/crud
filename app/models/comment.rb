# class Comment < ApplicationRecord
#   belongs_to :article
# end



class Comment < ApplicationRecord
  include Visible

  belongs_to :article
end

