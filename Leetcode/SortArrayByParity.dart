class Solution {
  List<int> sortArrayByParity(List<int> nums) {
    List<int> result = [];
    for (int i in nums) {
      // i est pair si i modulo 2 = 0
      if (i % 2 == 0) {
        // si i est pair, afficher les nombres au premier rang
        result.insert(0, i);
      } else {
        result.add(i);
      }
    }
    return result;
  }
}
