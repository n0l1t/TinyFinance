import SwiftUI

@main
struct TinyFinanceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

enum TransactionType{
    case income
    case expense
    
    var balanceEffect: Int{
        switch self{
            case .income: return 1
            case .expense: return -1
        }
    }
}
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

//Trainig enum

let t1: Transaction = Transaction(value: 500, goalID: nil, type: .income)
let t2: Transaction = Transaction(value: 423, goalID: nil, type: .expense)
let t3: Transaction = Transaction(value: 1239, goalID: nil, type: .income)
let t4: Transaction = Transaction(value: 23, goalID: nil, type: .expense)
var sampleTransactions: [Transaction] = [t1,t2,t3,t4]
 
func balance(_ array: [Transaction]) -> Int {
    var balance = 0
    for transaction in array {
        balance += transaction.value * transaction.type.balanceEffect
    }
    return balance
}

