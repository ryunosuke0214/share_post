module ApplicationHelper
    def flash_messages
        messages = flash.map do |_level, message|
          content_tag(:div, class: 'alert') do
            content_tag(:span, message, class: 'message')
          end
        end
    
        safe_join(messages)
      end
end

def error_messages(*objects)
  messages = objects.compact.map { |o| o.errors.full_messages }.flatten
  _error_messages(messages)
end

def _error_messages(messages)
  if messages.present?
    content_tag(:div, style: 'color: red') do
      list_items = messages.map { |m| content_tag(:li, m) }
      content_tag(:ul, safe_join(list_items), class: 'list-unstyled')
    end
  end
end
