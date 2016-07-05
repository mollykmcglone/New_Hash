require('rspec')
require('new_hash')

describe(NewHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = NewHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
  describe("#has_Key?") do
    it("returns true if the hash contains a given name") do
      test_hash = NewHash.new()
      test_hash.myStore("puppy", "cuter")
      expect(test_hash.has_Key?("puppy")).to(eq(true))
    end
  end
  describe("#has_Value?") do
    it("returns true if the hash contains a given value") do
      test_hash = NewHash.new()
      test_hash.myStore("turtlet", "cutest")
      expect(test_hash.has_Value?("cutest")).to(eq(true))
    end
  end
  describe("#length") do
    it("returns a number representing the length of the hash") do
      test_hash = NewHash.new()
      test_hash.myStore("turtlet", "cutest")
      expect(test_hash.length()).to(eq(1))
    end
  end
end
