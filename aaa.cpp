// Uses C++17 features.
// g++ -std=c++17 -O3 aaa.cpp -o aaa

#include <cstdio>   // BUFSIZ
#include <unistd.h> // POSIX write()
#include <array>    // std::array()

// Generates buffer of "a" into stack memory for less cache misses.
// When on the stack, the CPU instructions can quickly access the data.
constexpr auto genBuffer() {
  // BUFSIZ allows us to have a more memory alligned buffer.
  std::array<char, BUFSIZ> buf {};
  // Fill each byte with a char.
  for (auto &x : buf) {
    x = 'a'; 
  }
  return buf;
}

int main()
{
  static constexpr auto buf = genBuffer();
  
  // Use POSIX file write to have the most basic syscall we can
  // to write to the console.
  while(write(1, buf.data(), buf.size()));
  return 0;
}
