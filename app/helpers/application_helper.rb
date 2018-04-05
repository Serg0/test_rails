module ApplicationHelper
  def msg_type(name)
    case name
    when 'errors'
      'danger'
    else
      'info'
    end
  end
end
