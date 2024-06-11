import math

class RightTriangle():
    def __init__(self, sideA=0, sideB=0):
        self.sideA = sideA
        self.sideB = sideB

    def getSideC(self):
        sumOfSquares = self.sideA ** 2 + self.sideB ** 2
        sideC = math.sqrt(sumOfSquares)        
        return sideC
