module ApplicationHelper

  def flash_color flash_message
    #Tambien estan disponibles blue y yellow
    case flash_message.to_s
      when 'notice'
        'green'
      when 'success'
        'green'
      when 'error'
        'red'
      when 'alert'
        'red'
    end
  end

end
