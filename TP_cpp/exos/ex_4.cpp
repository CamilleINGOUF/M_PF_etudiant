#include <algorithm>
#include <functional>
#include <iostream>

using namespace std::placeholders;

int main()
{
  std::vector<int> liste = {1,-2,3};
  std::vector<int> out;
  std::vector<int> out2;
  
  std::copy_if(liste.begin(), liste.end(), std::back_inserter(out), [](int a){return (a > 0);});
  
  std::function<bool(int)> lessZero = std::bind(std::greater<int>(),0,_1);
  std::copy_if(liste.begin(), liste.end(), std::back_inserter(out2), lessZero);
  
  for(int x : out)
    std::cout << x << " ";
  std::cout << std::endl;
  
  for(int x : out2)
    std::cout << x << " ";
  std::cout << std::endl;
  
  return 0;
}
