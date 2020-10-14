require 'json'

#JSON PARSE
filepath = 'cores.json'
serialized_colors = File.read(filepath)
json_hash = JSON.parse(serialized_colors)

#TABLE INPUS
json_hash['value'].each do |color| 
  new_color = Color.new
  new_color.name = color["descricao"]
  new_color.code = color["codigo"]
  new_color.integration_id = color["cor"]
  new_color.save
end


