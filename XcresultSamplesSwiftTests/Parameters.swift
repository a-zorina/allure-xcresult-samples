import Testing

struct Parameters {
    @Test(arguments: ["foo", "bar"])
    func oneParameterNoLabel(_ value: String) async throws {
        #expect(!value.isEmpty)
        #expect(value.count >= 3)
    }
    
    @Test(arguments: ["foo", "bar"])
    func oneParameterWithLabel(Label value: String) async throws {
        #expect(!value.isEmpty)
        #expect(value.count >= 3)
    }
    
    @Test(arguments: ["foo", "bar"], [1, 2])
    func twoParametersNoLabels(_ text: String, _ count: Int) async throws {
        #expect(!text.isEmpty)
        #expect(count > 0)
        #expect(text.count * count <= 10)
    }
    
    @Test(arguments: ["foo", "bar"], [1, 2])
    func twoParametersWithLabels(Foo text: String, Bar count: Int) async throws {
        #expect(!text.isEmpty)
        #expect(count > 0)
        #expect(text.count * count <= 10)
    }
    
    // New tests that demonstrate failures
    @Test(arguments: ["foo", ""], [1, 2])
    func twoParametersOneFail(Text text: String, Count count: Int) async throws {
        #expect(!text.isEmpty) // Fails for ("", 1) and ("", 2)
        #expect(count > 0)
    }
    
    @Test(arguments: ["foo", "bar"], [0, -1])
    func twoParametersAllFail(Text text: String, Count count: Int) async throws {
        #expect(!text.isEmpty)
        #expect(count > 0) // Fails for all combinations: count is 0 or -1
    }
}