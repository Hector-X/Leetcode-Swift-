func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resultArray:[Int] = []
    var numsMap:[Int:Int] = [:] //hash表
    for (index,num) in nums.enumerated() {//swift采用这种方式同时遍历容器的Object和index
        numsMap[num] = index
    }
    for (index,num) in nums.enumerated() {
        let diff = target - num;
        if (numsMap[diff] != nil) && (numsMap[diff]!>index) {//在hash表中查找元素直接用key访问该元素即可，
                                                             //不为nil即该元素存在
            resultArray.append(index)
            resultArray.append(numsMap[diff]!)
        }
    }
    return resultArray
}