class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :membership_total

  def membership_total
    object.memberships.sum(:charge)
  end
end
