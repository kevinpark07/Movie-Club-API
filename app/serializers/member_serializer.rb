class MemberSerializer < ActiveModel::Serializer
 attributes :user, :club

 belongs_to :user
 belongs_to :club
end
