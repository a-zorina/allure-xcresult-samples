import Testing

struct MathTests {

    @Test
    func addition() async throws {
        let result = 2 + 3
        #expect(result == 5)
    }

    @Test
    func incorrectMultiplication() async throws {
        let result = 3 * 4
        #expect(result == 11) // This will fail
    }
}
