ThinkingSphinx::Index.define :article, :with => :active_record do
  # fields
  indexes name, :sortable => true
  indexes content
  indexes [author.first_name, author.last_name], as: :author_name

  # attributes
  has author_id, published_at
end