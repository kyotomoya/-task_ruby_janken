puts "最初はグー!"

judge_ja = 1
judge_dir = nil
game = "win"

while  judge_ja == 1 do
  puts "じゃんけん....."
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_ja = gets.to_i
  program_ja = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "ホイ!"
  puts "あなたの手:#{jankens[player_ja]}を出しました"
  puts "相手の手:#{jankens[program_ja]}を出しました"
  puts "----------------------------------"

  if player_ja == program_ja
    puts "あいこで"
    judge_ja = 1
  elsif(player_ja == 0 && program_ja == 1)||(player_ja == 1 && program_ja == 2)||(player_ja == 2 && program_ja == 0)
    game = "win"
    judge_ja = 2
  else
    game = "lose"
    judge_ja = 2
  end
  if judge_ja == 2
    puts "あっち向いてホイ!"
    puts "[0]上\n[1]右\n[2]下\n[3]左"
    
    player_dir = gets.to_i
    program_dir = rand(4)
  
    directions = ["上", "右", "下", "左"]
    puts "あなた#{directions[player_dir]}を出しました"
    puts "相手#{directions[program_dir]}を出しました"
    puts "----------------------------------"

    if player_dir == program_dir && game == "win"
      puts "あなたの勝ちです"
    elsif player_dir == program_dir && game == "lose"
      puts "あなたの負けです"
    else
      judge_ja =1
    end
  else
    judge_ja = 1
  end
end