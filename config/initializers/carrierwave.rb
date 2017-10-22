CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV['ZkY_rPI1HNMaEkycvng9PjvwMRycQq69ArsnJakH']
  config.qiniu_secret_key    = ENV['mvC5p-tYaK2E4cAbYjKWl8eqPB0RNAgW8_O79dwL']
  config.qiniu_bucket        = ENV['job-listing']
  config.qiniu_bucket_domain = ENV['oy7wv2us3.bkt.clouddn.com']
  config.qiniu_block_size    = 4 * 1024 * 1024
  config.qiniu_protocol      = 'http'
  # when select different time-zone, there is different: up.qiniug.com
  # config.qiniu_up_host       = 'http://up.qiniug.com'
end
