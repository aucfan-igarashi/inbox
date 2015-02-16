require 'rubygems'
require 'net/ssh'
require 'net/scp'

###  opt = {
###      :keys => '公開鍵のパス',
###      :passphrase => '公開鍵のパスフレーズ',
###      :port => # SSHのポート番号
###  }
###  
###  # コネクションを確立
###  Net::SSH.start('ホスト名', 'ユーザー名', opt) do |ssh|
###      # コマンドを実行
###      ssh.exec!('do something')
###  end


Net::SSH.start('192.168.2.41', 'root', :password => 'dfI83e4o') do |ssh|
  print(ssh.exec!('hostname'))
  print(ssh.exec!('df -h'))
end
Net::SSH.start('192.168.2.42', 'root', :password => 'dfI83e4o') do |ssh|
  print(ssh.exec!('hostname'))
  print(ssh.exec!('df -h'))

end
