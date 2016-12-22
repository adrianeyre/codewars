=begin

1. If a person is talking to you, the word 'Superman' appears in
   the sentence, so he is not a superman.
2. Because Superman usually careful to hide the word 'Superman' in
   a sentence, and each of the two letters are not continuous.
3. Sometimes Superman will be especially careful, reverse the word,
   or transform uppercase and lowercase, let others more difficult
   to find out.
Now, I invite you to help me write the code (my hand was injured, there is no
way to knock on the keyboard), a function named findSuperMan, can correctly find
out who is Superman, and let him wear the red pants and cloak, save our earth!

output is a string, if find out SuperMan,
say "Hi, SuperMan!" to him,  otherwise, say "Are you crazy?"

=end

# My Solution
def find_SuperMan(s)
  return "Are you crazy?" if s.downcase =~ /.*superman.*/
  find = {"s"=>1,"u"=>1,"p"=>1,"e"=>1,"r"=>1,"m"=>1,"a"=>1,"n"=>1}
  n = -10
  s.split("").each_with_index {|x,i| (find[x.downcase] -= 1; n = i) if find[x.downcase] != nil && n != i - 1}
  isSuperMan = true
  find.each {|k,v| (isSuperMan = false; break) if v > 0}
  isSuperMan ? "Hi, SuperMan!" : "Are you crazy?"
end

# Better Solution
def find_SuperMan(s)
  s.match(/s[^u]+.*u[^p]+.*p[^e]+.*e[^r]+.*r[^m]+.*m[^a]+.*a[^n]+.*n/i) ||
  s.match(/n[^a]+.*a[^m]+.*m[^r]+.*r[^e]+.*e[^p]+.*p[^u]+.*u[^s]+.*s/i) ?
  "Hi, SuperMan!" : "Are you crazy?"
end

# Another Solution
def find_SuperMan(s)
  s =~ /s.+u.+p.+e.+r.+m.+a.+n|n.+a.+m.+r.+e.+p.+u.+s/i ? "Hi, SuperMan!" : "Are you crazy?"
end
