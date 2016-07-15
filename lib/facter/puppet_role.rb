# ([a-z]+)[0-9]+, i.e. www01 or logger22 have a puppet_role of www or logger
if Facter.value(:hostname) =~ /(class)/
  Facter.add('puppet_role') do
    setcode do
      $1
    end
  end

# ([a-z]+), i.e. www or logger have a puppet_role of www or logger
elsif Facter.value(:hostname) =~ /(lab)/
  Facter.add('puppet_role') do
    setcode do
      $1
    end
  end

# ([a-z]+), i.e. www or logger have a puppet_role of www or logger
elsif Facter.value(:hostname) =~ /(fac)/
  Facter.add('puppet_role') do
    setcode do
      $1
    end
  end

# Set to hostname if no patterns match
else
  Facter.add('puppet_role') do
    setcode do
      'default'
    end
  end
end
