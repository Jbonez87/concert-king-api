class ApiService
  def initialize(keys: {})
    @keys = keys
  end

  def self.call(keys = {})
    new(keys: keys).call
  end

  def call
    fetch
    shows
  end

  private

  attr_reader :shows, :keys

  def fetch
    fail NotImplementedError, "Inheriting class must implement 'fetch'"
  end
end
