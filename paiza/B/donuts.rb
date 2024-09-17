=begin
入力例として以下が与えられる。ひとつの.と8つの#で囲われた箇所を検索しその数を出力する処理

5 5
#####
#.###
###.#
#.###
###..

上記の場合、3が出力される

＜学び＞
・複数行の取り出しとその形式
・配列の抜き出し
・文字列の抜き出し
=end

input_line = readlines(chomp: true)
lines = input_line[1..-1]

H = input_line[0].split(' ')[0].to_i
W = input_line[0].split(' ')[1].to_i

i = 1
j = 1
count = 0

while i < H
    while j < W
      if lines[i][j] == '.'
        if lines[i-1][j-1] == '#' && lines[i-1][j] == '#' && lines[i-1][j+1] == '#' && lines[i][j-1] == '#' && lines[i][j+1] == '#' && lines[i+1][j-1] == '#' && lines[i+1][j] == '#' && lines[i+1][j+1] == '#'
          count += 1
        end
      end
      j += 1
    end
    j = 1
    i += 1
end

p count
