class CaseSerializer < ActiveModel::Serializer
 attributes :observation_date, :country, :confirmed, :deaths, :recovered
end