class Array
  define_method(:queen_attack?) do |position|
    targetRow = position[0]
    targetColumn = position[1]
    queenRow = self[0]
    queenColumn = self[1]

    queenRow.eql?(targetRow)
  end
end
