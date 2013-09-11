def under_to_cap string
  string.split("_").map{|str| str.capitalize}.join("\s")
end


prefix = %q[<br><a href="http://localhost:3000/]

ARGF.readline  # ignore first line, header
ARGF.each.with_index do |line,i|
  line = line.split[0..1]
  next unless line[1] == "GET"
  next if line[0] =~ /^(new|edit)_/
  next unless line[0] =~ /s$/

  line = line[0]
  puts prefix+line+"\">"+under_to_cap(line)+"</a>"
end
