require 'net/http'
require 'json'

res = Net::HTTP.post_form(URI.parse('https://slack.com/api/files.upload'),{
                'token' => 'xoxp-403286174406-402103267141-402269621285-a6003d6909aa2ba901fe01e7a3d31f94',
                'channels' => 'CBTQFF9D1',
                'title' => 'Hello ruby',
                'filetype' => 'ruby',
                'content' => 'hogehoge',
                'initial_comment' => 'fugafuga'
                })
json_res = JSON.parse(res.body)

puts json_res
