class Array
  define_method(:queen_attack?) do |position|
    attack = false
    targetRow = position[0]
    targetColumn = position[1]
    queenRow = self[0]
    queenColumn = self[1]

    changeRow = (targetRow - queenRow).abs()
    changeColumn = (targetColumn - queenColumn).abs()

    if queenRow.eql?(targetRow)
      attack = true
    elsif queenColumn.eql?(targetColumn)
      attack = true
    elsif changeRow.eql?(changeColumn)
      attack = true
    end
    attack
  end
end
