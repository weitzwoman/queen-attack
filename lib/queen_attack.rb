class Array
  define_method(:queen_attack?) do |position|
    targetRow = position[0]
    targetColumn = position[1]
    selfRow = self[0]
    selfColumn = self[1]
    changeRow = (targetRow - selfRow).abs()
    changeColumn = (targetColumn - selfColumn).abs()
    attack = false
    if selfRow.eql?(targetRow)
      attack = true
    elsif selfColumn.eql?(targetColumn)
      attack = true
    elsif changeRow.eql?(changeColumn)
      attack = true
    end
    attack
  end
end

class Array
  define_method(:pawn_attack?) do |position|
    targetRow = position[0]
    targetColumn = position[1]
    selfRow = self[0]
    selfColumn = self[1]
    changeRow = (targetRow - selfRow).abs()
    changeColumn = (targetColumn - selfColumn).abs()
    attack = false
    if changeRow == changeColumn && changeRow == 1
      attack = true
    end
    attack
  end
end
