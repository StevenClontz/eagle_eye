module EagleEye
  def get_template(filename)
    File.read(
      File.join(
        File.dirname(__FILE__), 'templates', filename
      )
    )
  end
end