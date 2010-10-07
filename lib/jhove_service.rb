require 'systemu'

CONF = File.join(RAILS_ROOT, 'jhove', 'jhove.conf')
CP = File.join(RAILS_ROOT, 'jhove', 'JhoveApp.jar')
 
 
class JhoveService
  
  def self.analyze(path_to_file)
    cmd =  "java -classpath " << CP << " Jhove -c " << CONF << " -h xml " << path_to_file
    out = `#{cmd}`
  end




end