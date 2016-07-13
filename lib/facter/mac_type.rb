# mac_type.rb
Facter.add(:mac_type) do
  confine :kernel => "Darwin"
  setcode do
  s = Facter.value(:fqdn)
  if s[0,1] == 'aa'
    'aa'
  elsif s[0,1] == 'fa'
    'fa'
  elsif s[0,1] == 'fc'
    'fc'
  elsif s[0,1] == 'af'
    'af'
  elsif s[0,1] == 'mf'
    'mf'
  elsif s[0,1] == 'tf'
    'tf'
  end
end
