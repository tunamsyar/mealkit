# frozen_string_literal: true

class Recipe < ContentfulModel::Base
  self.content_type_id = 'recipe'

  def self.load_all
    all.load!
  end
end
