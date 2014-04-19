# coding: utf-8

post '/upload' do
    imagedata = params['imagedata'][:tempfile].read
    hash = Digest::MD5.hexdigest(imagedata)

    f = File.open("data/#{hash}.png","w")
    f.print(imagedata)
    f.close

    "http://s.tsur.jp/#{hash}.png"
end
