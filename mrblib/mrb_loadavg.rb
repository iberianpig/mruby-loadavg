class Loadavg

  def one_min
    read[0]
  end

  def five_min
    read[1]
  end

  def fifteen_min
    read[2]
  end

  def read
    File.read('/proc/loadavg').split(" ")
  end
end
