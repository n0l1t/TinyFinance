import Foundation

struct Transaction{
    let value: Int
    let date: Date
    let id: UUID
    let goalID: UUID?
    let type: TransactionType

    init(value: Int, goalID: UUID?, type:TransactionType){
        self.id = UUID()
        self.value = value
        self.date = Date()
        self.goalID = goalID
        self.type = type
    }
    init(value: Int, date: Date, goalID: UUID?, type:TransactionType){
        self.id = UUID()
        self.value = value
        self.date = date
        self.goalID = goalID
        self.type = type
    }
}

