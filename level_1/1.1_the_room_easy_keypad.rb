inp = []
5.times{inp << gets.gsub("\n","").split(" ")}
inp.flatten!
cnt = inp.last(12)
num = inp.first
keys = (1..9).to_a.map(&:to_s) + ["*","0","#"]
res = keys.inject({}){|h,k| h.merge!(k => cnt[keys.index(k)].to_i)}.
  inject([]){|ary,elm| ary.concat Array.new(elm[1],elm[0])}.
  permutation(num.to_i).to_a.map{|res| res.join(" ")}.sort.uniq
puts res
