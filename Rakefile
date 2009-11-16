desc "Install default Unix enviroment via ssh/scp"
task :install do
  FILEMAPS = {'gitconfig.sh' => '.gitconfig',
              'vimrc.sh' => '.vimrc',
              'profile.sh' => '.profile',
              'inputrc.sh' => '.inputrc'}
  
  hosts = ENV['HOSTS']
  hosts = hosts.split ' ' if hosts
  raise "You need to supply one or more hosts to install the enviroment on by setting HOSTS" if hosts.nil? || hosts.empty?
  
  hosts.each do |host|
    puts "Installing default enviroment on #{host}"
    path = Dir.pwd
    FILEMAPS.each_pair do |here,there|
     command = "scp -C  #{File.join(path, here)} #{host}:~/#{there}"
     system(command)
    end

  end
  
  

end