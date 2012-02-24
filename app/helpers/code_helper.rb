module CodeHelper

  def code title = '', options = {}, &block
    content_tag :div, :class => [ "l-code-block", options[:class] ].compact.join(' ') do
      code_title(title).to_s.html_safe + capture(&block).to_s.html_safe
    end
  end

  private

    def code_title text
      %(<header class="b-code-block-header">#{text}</header>) unless text.blank?
    end
end