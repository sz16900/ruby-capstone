class Color
  def black(str)
    "\e[30m#{str}\e[0m"
  end

  def blue(str)
    "\e[34m#{str}\e[0m"
  end

  def magenta(str)
    "\e[35m#{str}\e[0m"
  end

  def cyan(str)
    "\e[36m#{str}\e[0m"
  end

  def green(str)
    "\e[32m#{str}\e[0m"
  end

  def red(str)
    "\e[31m#{str}\e[0m"
  end

  def gray(str)
    "\e[37m#{str}\e[0m"
  end

  def yellow(str)
    "\e[33m#{str}\e[0m"
  end
end

class Highights < Color
  def bold(str)
    "\e[1m#{str}\e[22m"
  end
end
