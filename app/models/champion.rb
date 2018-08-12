class Champion < ApplicationRecord
  belongs_to :user
  include AlgoliaSearch
  after_commit :reindex_records

  algoliasearch do
    attribute :name, :quote, :location, :summoner_spell, :masteries
    minWordSizefor1Typo 4
    minWordSizefor2Typos 8
    hitsPerPage 42
  end

  private

  def reindex_records
    Champion.reindex
  end
end
