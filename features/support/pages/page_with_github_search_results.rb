module PageWithGithubSearchResults

  include Gizmo::PageMixin

  def valid?
    has_selector?(container_selector)
  end

  def search_results
    element_struct do |results|
      results.container = @document.css(container_selector)
      results.repositories = build_repositories
    end
  end

  private

  def container_selector
    'div.codesearch-results'
  end

  def build_repositories
    element_struct do |repos|
      repos.results = @document.css('.repo-list-item').map do |result|
        build_repository_result result
      end
    end
  end

  def build_repository_result result
    element_struct do |repo_result|
      repo_result.title = result.css('.repo-list-name')
      repo_result.link = result.css('.repo-list-name a')
      link_parts = repo_result.link.inner_text.split('/').map(&:strip)
      repo_result.author = link_parts[0]
      repo_result.name = link_parts[1]
    end
  end
end
