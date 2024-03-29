module Game

  def operations(num1, num2)
    ops = [
      [
        "+", num1 + num2
      ],[
        "-", num1 - num2
      ],[
        "/", num1 / num2
      ],[
        "*", num1 * num2
      ],
    ] 

    return ops[rand(3)]
  end

  def compareAnswer(response, answer)
    return response === answer
  end

  def questionGenerator(player)
    num1 = rand(1..30)
    num2 = rand(1..30)
    question = operations(num1, num2)
    puts "#{player.name}: #{num1} #{question[0]} #{num2} ="
    playerAnswer = gets.chomp().to_i
    if compareAnswer(playerAnswer, question[1]) then
      puts "YES! That's correct"
      player.addScore()
    else
      puts "Seriously? No...it's #{question[1]}"
    end
  end

  def calculateWinner(player1, player2)
    if player1.score > player2.score then
      return player1.name
    elsif player1.score < player2.score then
      return player2.name
    else
      return nil
    end
  end

end