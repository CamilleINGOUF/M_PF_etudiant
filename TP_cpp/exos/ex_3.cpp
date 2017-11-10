#include <algorithm>
#include <functional>
#include <iostream>

int main()
{
  std::vector<int> liste = {1,2,3};
  
  int objFonction = std::accumulate(liste.begin(), liste.end(), 0, std::plus<int>());
  int lambda = std::accumulate(liste.begin(), liste.end(), 0, [](int a, int b){return a+b;});
  int lambda2 = std::accumulate(liste.begin(), liste.end(), 0, [](int a, int b){if(a>b) return a; else return b;});
  int max = *std::max_element(liste.begin(), liste.end());
  
  std::cout << objFonction  << std::endl;
  std::cout << lambda  << std::endl;
  std::cout << lambda2  << std::endl;
  std::cout << max  << std::endl;
  
  return 0;
}
