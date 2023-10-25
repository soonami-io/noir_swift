let BYTECODE = "H4sIAAAAAAAA/7WTMRLEIAhFMYkp9ywgGrHbq6yz5v5H2JkdCyaxC9LgWDw+H9gBwMM91p7fPeOzIKdYjEeMLYdGTB8MpUrCmOohJJQkfYMwN4mSSy0ZC0VudKbCZ4cthqzVrsc/yw28dMZeWmrWerfBexnsxD6hJ7jUufr4GvyZFp8xpG0C14Pd8s/q29vPCBXypvmpDx7sD8opnfqIfsM1RNtxBQAA"

func testProveVerify() -> Bool {
    let vec = RustVec<Int32>()
    vec.push(value: 1)
    vec.push(value: 2)
    
    guard let proof = prove_swift(BYTECODE, vec) else {
        return false
    }
    
    return verify_swift(BYTECODE, proof) ?? false
}

print(testProveVerify())