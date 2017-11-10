#include <algorithm>
#include <functional>
#include <iostream>

using namespace std::placeholders;

int function(int a, int b)
{
  return a + b;
}

int main()
{
  int a = 13;
  int b = 37;

  //auto lambda = [](int a, int b){return a + b;};
  std::function<int(int,int)> lambda = [](int a, int b){return a + b;};
  
  std::function<int(int,int)> objetFonction = std::plus<int>();
  
  std::function<int(int)> fonctionPartielle = std::bind(function, 42, _1);
  
  std::cout << function(a,b) << std::endl;
  std::cout << lambda(a,b) << std::endl;
  std::cout << objetFonction(a, b) << std::endl;
  std::cout << fonctionPartielle(a) << std::endl;
  return 0;
}
