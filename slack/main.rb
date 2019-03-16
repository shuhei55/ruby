require 'net/http'
require 'json'

res = Net::HTTP.post_form(URI.parse('https://slack.com/api/channels.list'),{
    'token' => 'xoxp-403286174406-402103267141-402269621285-a6003d6909aa2ba901fe01e7a3d31f94'
})

#json_res = JSON.pretty_generate(res.body)
json_res = JSON.parse(res.body)

json_res["channels"].each do |res|
    puts "id: #{res["id"]} \nname: #{res["name"]}\n"
end
#puts json_res["channels"][0]["id"]

#puts "id: " + res['id'].to_s
#puts "name: " + res['name'].to_s
#res.each do |res|
#    channel_name = res["name"]
#    channel_id = res["id"]
#    puts " - #{channel_name}: #{channel_id}"
#end
