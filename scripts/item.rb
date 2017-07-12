require 'yaml'

class Item
  def self.build_from(filename, base_url)
    data = YAML.load File.read filename
    data.map { |d| new(d, base_url) }
  end

  def initialize(data, base_url)
    id = data['id']
    @title = data.fetch('title', id)
    @url = base_url.sub('REPLACE', id)
  end

  def to_json(_)
    data.to_json
  end

  private

  def data
    {
      arg: @url,
      autocomplete: @title,
      subtitle: @url,
      text: { copy: @url },
      title: @title,
      uid: @title
    }
  end
end
