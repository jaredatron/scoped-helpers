require File.join( File.dirname(__FILE__), 'scoped_helper' )

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
    helper = Class.new(ScopedHelper, &block)
    self.send :define_method, name do
      helper.new(self)
    end
  end
end