class ListingsSchema < RubyLLM::Schema
  array :items do
    object do
      string :title
      string :description
    end
  end
end
