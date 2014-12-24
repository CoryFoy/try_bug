class Score
  def initialize(game)
    @local = LocalScore.find_by_game(game)
    @official = OfficialScore.find_by_game(game)
  end

  def has_local?(field)
    return false unless @local.respond_to?(field)
    return false unless @local.try(:send, field).present?
    return true unless has_official?(field)
    return local(field) != official(field)
  end

  def local(field)
    return @local.try(:send, field)
  end

  def official(field)
    return @official.try(:send, field) if has_official?(field)
  end


  def has_official?(field)
    @official.respond_to?(field)
  end

  def self.respond_to?(method_sym, include_private = false)
    @local.respond_to?(method_sym, include_private) ||
    @official.respond_to?(method_sym, include_private)
  end

  def method_missing(method, *args)
    return @local.send(method, *args) if has_local?(method)
    return @official.send(method, *args) if has_official?(method)
  end
end
