module ApplicationHelper
  def angular_controller(name)
    (name + '_controller').camelize
  end
end
