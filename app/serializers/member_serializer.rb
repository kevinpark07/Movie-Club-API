class MemberSerializer < ActiveModel::Serializer
 attributes :id, :user, :club

 belongs_to :user
 belongs_to :club
end
