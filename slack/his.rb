require 'net/http'
require 'json'

res = Net::HTTP.post_form(URI.parse('https://slack.com/api/channels.history'),{
                            'token' => 'xoxp-403286174406-402103267141-402269621285-a6003d6909aa2ba901fe01e7a3d31f94',
                            'channel' => 'CBTQFF9D1'
                        })

json_res = JSON.parse(res.body)

puts json_res

#res_re = json_res["messages"].reverse

#res_re.each do |res|
#    if res["type"] == "message" then 
#        puts "user:#{res["user"]}: #{res["text"]}"
#    end
#end
