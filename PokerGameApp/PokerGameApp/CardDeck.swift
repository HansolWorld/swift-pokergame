//
//  CardDeck.swift
//  PokerGameApp
//
//  Created by apple on 2023/03/20.
//

import Foundation


class CardDeck {
    private var deck: [Card] = []
    private var tempDeck: [Card] = []
    
    init() {
        ///  CardDeck 객체를 만들때만 일정하게 카드리스트를 만든다.
        ///  게임이 시작된 이후에는 카드를 재정렬 하는 함수는 존재하지 않는다.
        ///  카드를 재정렬하고 싶다면 새로운 CardDeck을 만들어야 한다.
        let allShape: [Card.Shape] = Card.Shape.allCases
        let allNumber: [Card.Number] = Card.Number.allCases
        
        for cardShape in allShape {
            for cardNumber in allNumber {
                self.deck.append(Card(number: cardNumber, shape: cardShape))
            }
        }
        
    }
    
    func count() -> Int {
        return self.deck.count
    }
    
    func shuffle() {
        /// fisher–yates 방법으로 shuffle 구현
        /// 배열의 index를 순차적으로 진행한다(i).
        /// i 이후부터 배열의 길이값까지 중 랜덤값을 뽑는다(swapIndex).
        /// i와 swapIndex의 값을 바꾼다.
        let deckCount = self.deck.count
        
        for i in 0..<deckCount {
            let swapIndex:Int = Int.random(in: i..<deckCount)
            self.deck.swapAt(i, swapIndex)
        }
    }
    
    func removeOne() -> Card? {
        if let tempCard:Card = self.deck.popLast() {
            self.tempDeck.append(tempCard)
            return tempCard
        } else {
            return nil
        }

    }
    
    func reset() {
        self.deck += self.tempDeck
    }
}


func testCardDeck() {
    var result = ""
    let cardDeck:CardDeck = CardDeck()
    
    let cardShapeCount: Int = Card.Shape.allCases.count
    let cardNumberCount: Int = Card.Number.allCases.count
    let nowCardCount = cardDeck.count()
    
    if cardShapeCount*cardNumberCount != nowCardCount {
        result += "card init 이상\n"
    }
    
    cardDeck.shuffle()
    if nowCardCount != cardDeck.count() {
        result += "shuffle 이상\n"
    }
    
    
    let countCard = 5
    for _ in 0..<countCard {
        let _:Card = cardDeck.removeOne()
    }
    
    if cardDeck.count() != nowCardCount - countCard {
        result += "remove 이상\n"
    }
    
    if result == "" {
        print("이상무")
    } else {
        print(result)
    }
    
}
