# def domain_name(_url)
# 	regex = /(\/+|www\.).*?(\.\w)+/
# 	pre_domain = _url[regex]
# 	domain = pre_domain.gsub(/(\/|w\.)/,'')
# end

def domain_name(url)
	# trying to do my better c:
	domain = url.gsub(/\w+=?:\/+|www.|\.\w+|\/\w+|\//,'')
end

p domain_name("http://google.com")
p domain_name("https://youtube.com")
p domain_name("http://google.co.jp")
p domain_name("www.xakep.ru")
p domain_name("http://www.codewars.com/kata/")
p domain_name("http://www.bullshit.com/kata/soo/aweqwae/asd/wewqe")