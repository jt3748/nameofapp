module ApplicationHelper

  # this is how the active link reflects which page youre on. Directions available in message transcript with Bill on CareerFoundry
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
end
