module ApplicationHelper

  def markdown(text)
     markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :fenced_code_blocks => true,
    :autolink => true)
    markdown.render(h(text)).html_safe
  end

end
