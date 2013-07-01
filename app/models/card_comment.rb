# == Schema Information
#
# Table name: card_comments
#
#  id           :integer          not null, primary key
#  card_id      :integer          not null
#  commenter_id :integer          not null
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CardComment < ActiveRecord::Base
  attr_accessible :card_id, :commenter_id, :content

  belongs_to :card
  belongs_to :commenter, :class_name => "User"

end