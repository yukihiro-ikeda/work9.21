class Player

    def hand
        
        puts "数字を入力してください。"# プレイヤーにじゃんけんの手を選択させる文章を表示させます。
  
        puts "0:グー"
  
        puts "1:チョキ"
  
        puts "2:パー"
  
        input_hand =gets.chomp
        unless  input_hand ==  "0" || input_hand  == "1" || input_hand  == "2"
          puts "もう一度数字を入力してください"
          return hand.to_i
         else
          input_hand = input_hand.to_i
          return  input_hand
         end    
     end
  end
  
  #-----------------------------------------------------------------------
  # 相手が「0~2」の値をランダムに生成するロジックを書きます。
  
  class Enemy
  
    def hand
  
        return rand(3).to_i# グー、チョキ、パーの値をランダムに取得する。
  
    end
  
  end
  
  #------------------------------------------------------------------------
  # プレイヤー(自分)が入力した「0~2」と、敵がランダムで生成した「0~2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
  class Janken
  
    def pon(x,y)
  
      a = ["グー", "チョキ", "パー"]# 変数「janken」に["グー", "チョキ", "パー"]を代入します。
  
      puts "相手の手は#{a[y]}です。"#「相手の手は#{相手の手}です。」と出力させます。
  
      # Playerクラスの戻り値とEnemyクラスの戻り値からじゃんけんするロジックを作成します。
  
      if x == y # Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
  
        puts "あいこ"# 「あいこ」を出力します。
  
        true#「true」を返してじゃんけんを繰り返し実行させます。# ヒント：「return」を使って戻り値を返すことができます。しかし、Rubyでは戻り値を返す場合、「return」を省略するのが一般的です。
        
      elsif # もしも下記の組み合わせだった場合
  
         (x == 0 && y == 1) || (x == 1 && y == 2) || (x == 2 && y == 0)
  
         puts "あなたの勝ちです"
  
      else
  
        puts "あなたの負けです"
        
      end
  
    end
  
    end
  #------------------------------------------------------------------------
  
  class GameStart# じゃんけんゲームを実行するロジックを書きます。
  
    def self.jankenpon# selfを使用することで、GameStartをインスタンス化することなく、クラス名を使ってjankenponメソッドを呼び出せます。
  
      player = Player.new# 変数「player」にPlayerをインスタンス化したものを代入します。
  
      enemy = Enemy.new# 変数「enemy」にEnemyをインスタンス化したものを代入します。
  
      janken = Janken.new# 変数「janken」にJankenをインスタンス化したものを代入します。
  
      next_game = true# 変数「next_game」に「true」を代入しましょう。
  
      while next_game == true# 「next_game」が「false」だと繰り返し処理を終了し、「true」だと繰り返し処理を継続します。
  
      next_game = janken.pon(player.hand, enemy.hand)# 変数「next_game」にじゃんけんを実行して返ってきた値(戻り値)を代入します。#「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
  
      end
  
    end
  
    end
  
    GameStart.jankenpon# クラス名を使ってjankenponメソッドを呼び出します。