import Foundation

class Goal{
    let id: UUID
    let dateOfExecution: Date
    var goalSum: Int
    var currentSum: Int
    var goalState: GoalState
    var goalName: String
    
    init(dateOfExecution: Date, goalSum: Int, goalName: String) {
        self.id = UUID()
        self.dateOfExecution = dateOfExecution
        self.goalSum = goalSum
        self.currentSum = 0
        self.goalState = .active
        self.goalName = goalName
    }
    
    func isCompleted() -> Bool {
        return currentSum >= goalSum
    }
    
    func isOutdated() -> Bool {
        return Date() >= dateOfExecution
    }
    
    func updateState(){
        if isCompleted() || isOutdated(){
            self.goalState = .closed
        }else{
            self.goalState = .active
        }
    }
}
