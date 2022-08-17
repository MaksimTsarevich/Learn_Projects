func factorial (_ a: Int) -> Int{
    if a == 0 {
        return 1
    }
    return a * factorial(a - 1)
}

print(factorial(5))
