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

var listDFSVisited = Array(repeating: false, count: graph.count)
print("인접 리스트\n\(graph)를\nDFS로 방문하면 ")
Search().DFS(list: graph, start: 1, visited: &listDFSVisited, completion: {
    print($0, terminator: " -> ")
})
print("")
var matrixDFSVisited = Array(repeating: false, count: matrix.count)
print("인접 행렬\n\(matrix)를\nDFS로 방문하면 ")
Search().DFS(matrix: matrix, start: 0, visited: &matrixDFSVisited, completion: {
    print($0, terminator: " -> ")
})

print("")

print("얼음틀 [[0,0,1,1,0], [0,0,0,1,1], [1,1,1,1,1], [0,0,0,0,0]]에서 얼음 덩이는 \(Ice().solution(tray: [[0,0,1,1,0], [0,0,0,1,1], [1,1,1,1,1], [0,0,0,0,0]], maxX: 4, maxY: 5))")
print("미로 탈출 퇴단 경로는 ", Maze().solution(maze: [[1,0,1,0,1,0], [1,1,1,1,1,1], [0,0,0,0,0,1], [1,1,1,1,1,1,], [1,1,1,1,1,1,]], maxX: 5, maxY: 6))
print("버블 정렬 [1, 4, 2, 6, 9, 0, 6, 7, 3] -> ", BubbleSort().sort(data: [1, 4, 2, 6, 9, 0, 6, 7, 3]))
print("선택 정렬 [1, 4, 2, 6, 9, 0, 6, 7, 3] -> ", SelectionSort().sort(data: [1, 4, 2, 6, 9, 0, 6, 7, 3]))
print("삽입 정렬 [1, 4, 2, 6, 9, 0, 6, 7, 3] -> ", InsertionSort().sort(data: [1, 4, 2, 6, 9, 0, 6, 7, 3]))
print("퀵 정렬 [1, 4, 2, 6, 9, 0, 6, 7, 3] -> ", QuickSort().sort(list: [1, 4, 2, 6, 9, 0, 6, 7, 3]))
print("계수 정렬 [3, 5, 7, 3, 1, 1, 2, 9, 6] -> ", CountingSort().sort([3, 5, 7, 3, 1, 1, 2, 9, 6]))

var mergeSortedArray1 = [1, 2, 3, 0, 0, 0]
print("[1, 2, 3, 0, 0, 0]의 앞 3개와 [2, 3, 5]의 앞 3개를 합치고 정렬하면 ", MergeSortedArray().merge(&mergeSortedArray1, 3, [2, 3, 5], 3))


    let p = TreeNode()
    p.val = 1
    p.left = .init(2)
    //p.right = .init(3)

    let q = TreeNode()
    q.val = 1
    q.right = .init(2)
    //q.right = .init(3)

    print("같은 트리일까? ", SameTree().solution(p, q))
    print("같은 트리일까2? ", SameTree().solution2(p, q))

    print("대칭 트리일까?", IsSymmetric().solution(p))




let root: TreeNode = .init(3)
    root.left = .init(9)

    let p2: TreeNode = TreeNode(20)
    root.right = p2

    p2.left = .init(15)
    p2.right = .init(7)

    print("이 트리의 최대 깊이는? ", MaxDepth().solution2(root))

print("이진 탐색 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] 에서 7은 몇번째에 있을까? ", BinarySearch().search(list: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], target: 7))
print("부품찾기 [8, 3, 7, 9 ,2] 에서 [5, 7, 9]를 찾아보자", FindingParts().solution(n: 5, ns: [8, 3, 7, 9 ,2], m: 3, ms: [5, 7, 9]))
print("떡볶이 떡만들기 6cm를 [19, 15, 10 ,17] 떡에서 얻으려면 자르는 최대 높이는 ", CuttingRiceCake().solution(target: 6, cakes: [19, 15, 10 ,17]))

print("피보나치 수열 10번째 숫자는 ", Fibonacci().solution(n: 10))
print("26을 1로 만들기 위한 최소 횟수는", MakeOne().solution(n: 26))
print("5까지 켜진 비트 수는 ", CountingBits().solution(n: 5))
print("파스칼 삼각형 5는 ", PascalTriangle().generate(5))
print("최소 비용 계단 오르기 ", MinCostClimbingStairs().solution([10 ,15, 20]))
