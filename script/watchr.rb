def run(file)
  if File.exist?(file)
    cmd = "ruby -S rspec #{file}"
    puts "#{cmd}"
    system(cmd)
  end
end

def change_code(file)
  file = "spec/#{file}_spec.rb"
  run(file)
end

watch('app/(.*).rb') { |f| change_code("#{f[1]}") }
watch('spec/(.*).rb') { |f| run("#{f[0]}") }

