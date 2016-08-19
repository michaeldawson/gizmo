module PageWithGithubSearch

  include Gizmo::PageMixin

  def valid?
    has_selector?(form_selector)
  end

  def search_form
    element_struct do |form|
      form.container = @document.css(form_selector)
      form.element = container = form.container
      form.input = container.css("input[name=q]")
    end
  end

  define_action :enter_search_query do |query|
    locate(search_form.input).set(query)
  end

  define_action :click_element do |element|
    locate(element).click
  end

  define_action :submit_form do
    evaluate_script("document.forms[0].submit()")
  end

  define_action :search do |query|
    perform :enter_search_query, query
    perform :submit_form
  end

  private

  def form_selector
    "form[action='/search']"
  end

  def locate nokogiri_element
    # turn a nokogiri element into a capybara element
    # so we can use capybara's api to perform actions
    node = nokogiri_element.is_a?(Nokogiri::XML::NodeSet) ? nokogiri_element.first : nokogiri_element
    find(:xpath, node.path)
  end

end
