require 'action_view'

module RailsErbCheck
  def self.valid_syntax?(erb)
    begin
      ActionView::Template::Handlers::Erubis.new(erb).result
    rescue SyntaxError => ex
      p ex # do the simplest thing that works
      return false
    rescue Exception
      return true
    end
  end
end
