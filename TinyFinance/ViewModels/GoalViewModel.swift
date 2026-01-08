import Foundation

class GoalViewModel{
    var timer: Timer?
    var goals: [Goal]
    
    init(goals: [Goal]) {
        self.goals = goals
    }
    
    func addNewGoal(goalName: String, goalSum: Int, goalDate: Date){
        if goalDate <= Date(){
            //ошибка по дате
        }else{
            let newGoal = Goal(dateOfExecution: goalDate, goalSum: goalSum, goalName: goalName)
            newGoal.updateState()
            goals.append(newGoal)
        }
    }
    
    func deleteGoal(id: UUID){
        goals.removeAll() {$0.id == id}
    }
    
    func startDailyCheck(){
        guard timer == nil else { return }
        
        timer = Timer.scheduledTimer(
            withTimeInterval: 24*60*60,
            repeats: true
        ){ [weak self] _ in
            guard let self = self else { return }
            for goal in goals {
                goal.updateState()
            }
        }
    }
    
    func stopDailyCheck(){
        timer?.invalidate()
        timer = nil
    }
}
