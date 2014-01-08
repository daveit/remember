class Suburb < ActiveRecord::Base
  has_many :villages
  has_many :members

  include PgSearch
  pg_search_scope :search, against: [:name],
    using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
      # where("docname @@ :q or deldoc @@ :q or lotnum @@ :q or custord @@ :q or salesorder @@ :q", q: query)
    else
      scoped
    end
  end


end
