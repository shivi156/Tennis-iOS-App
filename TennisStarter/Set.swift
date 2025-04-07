class Set {
    private var player1GamesWon: Int = 0
    private var player2GamesWon: Int = 0
    private var previousSetScores: [(Int, Int)] = []
    
    func addGameToPlayer1() {
        player1GamesWon += 1
    }
    
    func addGameToPlayer2() {
        player2GamesWon += 1
    }
    
    func isTiebrake() -> Bool {
        return player1GamesWon == 6 && player2GamesWon == 6
    }
    
    func complete() -> Bool {
        return player1WonSet() || player2WonSet()
    }
    
    func player1WonSet() -> Bool {
        return (player1GamesWon >= 6 && player1GamesWon - player2GamesWon >= 2) ||
               (player1GamesWon == 7 && player2GamesWon == 5)
    }
    
    func player2WonSet() -> Bool {
        return (player2GamesWon >= 6 && player2GamesWon - player1GamesWon >= 2) ||
               (player2GamesWon == 7 && player1GamesWon == 5)
    }
    
    func saveCurrentSetScore() {
        if player1GamesWon > 0 || player2GamesWon > 0 {
            previousSetScores.append((player1GamesWon, player2GamesWon))
        }
    }
    
    func getPreviousSetScores() -> [(Int, Int)] {
        return previousSetScores
    }
    
    func resetGame() {
        saveCurrentSetScore()
        player1GamesWon = 0
        player2GamesWon = 0
    }
    
    func getPlayer1GamesWon() -> Int { return player1GamesWon }
    func getPlayer2GamesWon() -> Int { return player2GamesWon }
}
//class Set {
//
//    private var player1GamesWon: Int = 0
//    private var player2GamesWon: Int = 0
//    private var previousSetScores: [(Int, Int)] = []
//
//    
//    func addGameToPlayer1() {
//        if complete() {return}
//        else {
//            player1GamesWon += 1
//        }
//    }
//    
//    func addGameToPlayer2() {
//        if complete() {return}
//        else {
//            player2GamesWon += 1
//        }
//    }
//    
//    func complete() -> Bool {
//        return player1WonSet() || player2WonSet()
//    }
//    
//    func player1WonSet() -> Bool {
//        if !isTiebrake() {
//            return (player1GamesWon >= 6 && player1GamesWon - player2GamesWon >= 2) ||
//            (player1GamesWon == 7 && player2GamesWon == 5)
//        }
//        return false
//    }
//    
//    func player2WonSet() -> Bool {
//        if !isTiebrake() {
//            return (player2GamesWon >= 6 && player2GamesWon - player1GamesWon >= 2) ||
//            (player2GamesWon == 7 && player1GamesWon == 5)
//        }
//        return false
//    }
//    
//    func isTiebrake() -> Bool {
//        return player1GamesWon == 6 && player2GamesWon == 6
//    }
//    
//    func resetGame() {
//        saveSetScore()
//        player1GamesWon = 0
//        player2GamesWon = 0
//    }
//    
//    func getPlayer1GamesWon() -> Int {
//        return player1GamesWon
//    }
//    
//    func getPlayer2GamesWon() -> Int {
//        return player2GamesWon
//    }
//    
//    func saveSetScore() {
//        previousSetScores.append((player1GamesWon, player2GamesWon))
//    }
//    
//    func getPreviousSetScores() -> [(Int, Int)] {
//        return previousSetScores
//    }
//    
////    func currentSetScore() -> String {
////        return "\(player1GamesWon)-\(player2GamesWon)"
////    }
//    
////        func allPreviousSetScores() -> String {
////            return previousSetScores.map{("\($0.0)\n\($0.1)")}.joined(separator: ", ")
////        }
//
//}
