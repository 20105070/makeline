class MakeLine
    def self.make(luckyNum, unluckyNum)
        pot = (1..47).to_a
        lineArray = Array.new
        luckyNum = luckyNum.to_i
        if pot.include? luckyNum
            lineArray.push(luckyNum)
            pot.delete(luckyNum)
        end
        unluckyNum = unluckyNum.to_i
        if pot.include? unluckyNum
            pot.delete(unluckyNum)
        end
        index = lineArray.length
        while index < 6
            ball = pot[rand(0...pot.length)]
            lineArray.push(ball)
            pot.delete(ball)
            index += 1
        end
        line = lineArray.join(", ")
        return line
    end
end