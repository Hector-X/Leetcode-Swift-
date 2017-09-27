func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resultArray:[Int] = []
    var numsMap:[Int:Int] = [:]
    for (index,num) in nums.enumerated() {
        numsMap[num] = index
    }
    for (index,num) in nums.enumerated() {
        let diff = target - num;
        if (numsMap[diff] != nil) && (numsMap[diff]!>index) {
            resultArray.append(index)
            resultArray.append(numsMap[diff]!)
        }
    }
    return resultArray
}