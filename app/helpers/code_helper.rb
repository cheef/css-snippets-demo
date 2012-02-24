module CodeHelper

  def code title = '', &block
    <<-HTML.html_safe
      <div class="l-code-block">
        #{code_title(title)}
        #{CodeRay.scan(capture(&block).strip, :ruby).div(:css => :class)}
      </div>
    HTML
  end

  private

    def code_title text
      %(<header class="b-code-block-header">#{text}</header>) unless text.blank?
    end
end