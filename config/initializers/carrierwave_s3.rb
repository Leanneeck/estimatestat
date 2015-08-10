CarrierWave.configure do |config|
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIAJUX6EEBRHSVO4H3Q',
        aws_secret_access_key: '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'
    }
    config.fog_directory = 'hoverstat-video'
end