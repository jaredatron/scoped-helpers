require File.join( File.dirname(__FILE__), 'scoped_helper' )

SCOPED_HELPERS = {}

Module.class_eval do
  # Usage:
  #   module TextHelper
  #     scoped_helpers :text do
  #
  #       # def text.bold
  #       def bold(text)
  #         concat "<b>#{text}</b>"
  #       end
  #
  #     end
  #   end
  #
  #   <%= text.bold("porkchop sandwiched!") %>
  def scoped_helpers(name, &block)
    helper = begin
      if SCOPED_HELPERS.has_key? name
        SCOPED_HELPERS[name].class_eval(&block)
        SCOPED_HELPERS[name]
      else
        SCOPED_HELPERS[name] = Class.new(ScopedHelper, &block)
      end
    end
    self.send :define_method, name do
      helper.new(self)
    end
  end
end