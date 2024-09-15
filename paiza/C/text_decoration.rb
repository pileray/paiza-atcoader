# 入力テキストを+で囲んで出力する問題
# getsで取得したものはchompで改行を消せる
# option + ¥で \ を出せる。あたふたせず出しましょう

input_line = gets.to_s.chomp
decoration = "+" * (input_line.length + 2)
result = "#{decoration}\n+#{input_line}+\n#{decoration}"

puts result
