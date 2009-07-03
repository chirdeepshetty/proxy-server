require 'rake/clean'
 
INCLUDE = "include"
ERLC_FLAGS = "-I#{INCLUDE} +warn_unused_vars +warn_unused_import"
 
SRC = FileList['*.erl']
OBJ = SRC.pathmap("%{src,ebin}X.beam")
CLEAN.include("ebin/*")
CLEAN.include("build/*")
FILE_SEPARATOR = ENV["file.separator"] || "\\"
 
rule ".beam" =>  ["%{ebin,src}X.erl"] do |t|
  sh "erlc -pa ebin -W #{ERLC_FLAGS} -o ebin #{t.source}"
  puts "Compiled #{t.source} to #{t.name}"
end

directory 'ebin'
system "mkdir build"

task :compile => ['ebin'] + OBJ

task :test => :compile do
	puts "Running unit tests..."
	system "copy proxytests.script ebin"
	system "cd ebin && escript.exe proxytests.script"
end

task :package => :test do
	beamList = FileList['ebin/*.beam']
	beamList.each do |beamFile|
		beamFile = beamFile.split("/").last
		unless beamFile =~ /test/
			copyCmd = "cd ebin && copy #{beamFile} ..#{FILE_SEPARATOR}build"
			system copyCmd
		end
	end
	copyyaws = "copy *.yaws build#{FILE_SEPARATOR}"
	copyhtml = "copy *.htm* build#{FILE_SEPARATOR}"
	
	copyWebFiles = "#{copyyaws} && #{copyhtml}"
	system copyWebFiles
end

task :default => :package

task :build_and_deploy do
  cmd = "copy build#{FILE_SEPARATOR}* c:#{FILE_SEPARATOR}googleProxy"
  system(cmd)
end


