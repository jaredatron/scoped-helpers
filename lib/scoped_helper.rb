# Used to parent all scoped helpers
class ScopedHelper
  
  VERSION = '1.0.1'
  
  # requires an instance of ActionView::Base
  def initialize(base)
    raise ArgumentError, 'expected instance of ActionView::Base' unless base.is_a? ActionView::Base
    @base = base
  end
  
  # Forwards all sends to the given ActionView::Base instance whenever possible
  def method_missing(method, *args, &block)
    if @base.respond_to? method
      @base.send method, *args, &block
    else
      super
    end
  end
  
end