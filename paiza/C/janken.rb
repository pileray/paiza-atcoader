=begin
入力例として以下のじゃんけんの戦績が与えられる。左の方が勝った回数を出力する

6
G C
C G
P G
G C
P P
P C

＜学び＞
・mapで二重配列にするとto_iは使えません
・iを増やすことを忘れないこと
=end

input_line = readlines(chomp: true)
fight_count = input_line[0].to_i
fight_history = input_line.map{|line|line.split(' ')}[1..-1]

i = 0
win_count = 0

while i < fight_count
    alice_hand = fight_history[i][0]
    bob_hand = fight_history[i][1]

    if (alice_hand == 'G' && bob_hand == 'C') ||
        (alice_hand == 'C' && bob_hand == 'P') ||
        (alice_hand == 'P' && bob_hand == 'G')
        win_count += 1
    end
    i += 1
end

p win_count
