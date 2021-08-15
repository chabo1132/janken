def janken
  puts "じゃんけん"
  puts "数字を入力してください"
  puts "0:グー,1:チョキ,2:パー"

  player_hand = gets.to_i
  enemy_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]
    puts "ホイ"
    puts "あなたの手は#{jankens[player_hand]}です。"
    puts "相手の手は#{jankens[enemy_hand]}です。"

  win = (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)

  lose = !win

  if player_hand == enemy_hand
    puts "あいこ"
    return true
  elsif win
    puts "あなたの勝ちです"
  else lose
    puts "あなたの負けです"
  end

  if win
    puts "あっち向いて〜"
    puts "数字を入力してください"
    puts "0(上),1(下),2(右),3(左)"
  
    player_hand = gets.to_i
    enemy_hand = rand(4)
  
    hois = ["上","下","右","左"]
    puts "ホイ"
    puts "あなたの手は#{hois[player_hand]}です"
    puts "相手の手は#{hois[enemy_hand]}です"
    if player_hand == enemy_hand
      puts "あなたの勝ち"
    else
      puts "引き分け"
      puts "じゃんけんからやり直し"
      return true
    end
  end

  if lose
    puts "あっち向いて〜"
    puts "数字を入力してください"
    puts "0(上),1(下),2(右),3(左)"
  
    player_hand = gets.to_i
    enemy_hand = rand(4)
  
    hois = ["上","下","右","左"]
    puts "ホイ"
    puts "あなたの手は#{hois[player_hand]}です"
    puts "相手の手は#{hois[enemy_hand]}です"
    if player_hand == enemy_hand
      puts "あなたの負けです"
    else
      puts "引き分け"
      puts "じゃんけんからやり直し"
      return true
    end
  end
end

next_game = true

while next_game
  next_game = janken
end

