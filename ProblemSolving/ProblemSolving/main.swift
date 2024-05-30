//
//  main.swift
//  TCT
//
//  Created by  유 주연 on 5/27/24.
//

import Foundation

print("Hello, World!")

print("1260원을 이루는 최소 동전의 갯수는: ", Changes().solution(n: 1260))
print("[2, 4, 5, 4, 6], n: 5, m: 8, k: 3의 큰수의 법칙은 ", RuleOfBigNumber().solution(list: [2, 4, 5, 4, 6], n: 5, m: 8, k: 3))
print("[2, 4, 5, 4, 6], n: 5, m: 8, k: 3의 큰수의 법칙은 ", RuleOfBigNumber().solution2(list: [2, 4, 5, 4, 6], n: 5, m: 8, k: 3))
print("[[3, 1, 2], [4, 1, 4], [2, 2, 2]] 카드 중 최소값은 ", NumberCardGame().solution(cards: [[3, 1, 2], [4, 1, 4], [2, 2, 2]]))
print("[[7, 3, 1, 8], [3, 3, 3, 4]] 카드 중 최소값은 ", NumberCardGame().solution(cards: [[7, 3, 1, 8], [3, 3, 3, 4]]))
print("1007와 5은 1이 될때까지 ", UntilOne().solution(n: 27, k: 5))
print("1007와 5은 1이 될때까지 ", UntilOne().solution2(n: 27, k: 5))
print("5 x 5레서 RRRUDD 하면 현재 위치는 ", LRUD().solution(m: 5, footPrints: "RRRUD"))
print("5시 59분 59초까지 3은 ", Time().solution(n: 5))
print("[1,0,0,0,1,0,0] 꽃밭에 2개는 ", CanPlaceFlower().solution([1,0,0,0,1,0,0], 2))
print("a1에 서있는 나이트가 이동할 수 있는 경우의 수는 ", Knight().solution(position: "a1"))

let graph = [
    [], // 0
    [2,3], // 1
    [1,4,5], // 2
    [1,6,7], // 3
    [2], // 4
    [2], // 5
    [3], // 6
    [3,8], // 7
    [7] // 8
]

let matrix = [
    [0, 1, 1, 0, 0, 0, 0, 0],
    [1, 0, 0, 1, 1, 0, 0, 0],
    [1, 0, 0, 0, 0, 1, 1, 0],
    [0, 1, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 0, 1, 0]
]

print("인접 리스트\n\(graph)를\nDFS로 방문하면 ")
Search().DFS(list: graph, start: 1, visited: Array(repeating: false, count: graph.count), completion: {
    print($0, terminator: " -> ")
})
print("")
print("인접 행렬\n\(matrix)를\nDFS로 방문하면 ")
Search().DFS(matrix: matrix, start: 0, visited: Array(repeating: false, count: matrix.count), completion: {
    print($0, terminator: " -> ")
})
