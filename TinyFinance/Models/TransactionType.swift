import Foundation

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
