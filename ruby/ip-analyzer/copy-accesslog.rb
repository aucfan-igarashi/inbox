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


opt = {
    # :keys => '公開鍵のパス',
    # :passphrase => '公開鍵のパスフレーズ',
      :password => 'dfI83e4o'
    # :port => # SSHのポート番号
}

Net::SSH.start('192.168.3.165', 'root', :password => 'dfI83e4o') do |ssh|
# Net::SSH.start('192.168.3.165', 'root', opt) do |ssh|
    # アップロードする場合 local => remote
    # ssh.scp.upload! "/local/path", "/remote/path"

    # ダウンロードする場合 local => remote
    # ssh.scp.download! "/tmp/", "/data/apachelog/access_log.20150215"
    # ssh.scp.download! "/data/apachelog/access_log.20150215", "/home/vagrant/inbox/ruby/ip-analyzer/log"
    puts(ssh.scp.download! "/data/apachelog/access_log.20150215", "/home/vagrant/inbox/ruby/ip-analyzer/log")

    # メモリのデータをアップロードする場合
    # scp.upload! StringIO.new("some data to upload"), "/remote/path"

    # 複数ファイルを並行してダウンロードする場合 
    # d1 = scp.download("/remote/path", "/local/path")
    #d2 = scp.download("/remote/path2", "/local/path2")
    # [d1, d2].each { |d| d.wait }
end
                             
