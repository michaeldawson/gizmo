require 'ostruct'

module Gizmo
  class Page
    attr_reader :url, :document

    def initialize driver, content, url
      @browser = driver
      @document = Nokogiri::HTML(content)
      @url = url
    end

    # Pages are valid by default - specific mixins should change this behaviour to require certain elements on the page
    # then you will get an error message saying "Page did not have mixin #{name}". E.g.:
    # def valid?
    #   has_selector?('some_element_selector')
    # end
    def valid?
      true
    end

    def has_selector? css_selector
      @document.css(css_selector).any?
    end

    def perform action_name, *params
      method_name = "#{action_name.to_s}_action".to_sym
      raise NoMethodError, "No action named '#{action_name}' has been defined" unless respond_to? method_name
      send(method_name, *params)
    end

    def method_missing name, *args, &block
      method_name = name.to_sym
      return super unless browser.respond_to?(method_name)
      browser.send(method_name, *args, &block)
    end

    private

    attr_reader :browser

    def define_action action_name, &block
      self.class.send(:define_method, "#{action_name.to_s}_action".to_sym, &block)
    end

    def element_struct
      open_struct = OpenStruct.new
      yield open_struct if block_given?
      open_struct
    end
  end
end
