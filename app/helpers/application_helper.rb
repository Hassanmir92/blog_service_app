module ApplicationHelper # :nodoc:

  # Maps flash message types to Bootstrap alert styles
  def bootstrap_class_for(flash_msg_type)
    hash = HashWithIndifferentAccess.new({ success: "text-success", error: "text-danger", alert: "text-warning", notice: "text-primary" })
    hash[flash_msg_type] || flash_msg_type.to_s
  end

  # Returns HTML containing Bootstrap alert messages for each flash alert
  def flash_messages(opts = {})
    html_all = ""
    flash.each do |flash_msg_type, message|
      html = <<-HTML
      <div class="flash-message #{bootstrap_class_for(flash_msg_type)}">
        #{message}
      </div>
      HTML
      html_all += html
    end
    sanitize(html_all.html_safe)
  end

end
