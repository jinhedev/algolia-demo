class User < ApplicationRecord
  has_many :champions, dependent: :destroy
  include AlgoliaSearch
  after_commit :reindex_records

  algoliasearch do
    attribute :email, :username, :mac_address
  end

  private

  def reindex_records
    User.reindex
  end
end
