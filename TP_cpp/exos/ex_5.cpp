#include <algorithm>
#include <functional>
#include <iostream>

using namespace std::placeholders;

int main()
{
  std::vector<int> v = {1,-2,3};

  std::function<int(int,int)> produit =  [](int a, int b){return a*b;};
  int prod = std::inner_product(v.begin(), v.end(), v.begin(), 0, std::plus<int>(),produit);

  bool any = std::any_of(v.begin(), v.end(), [](int a){return a > 0;});

  std::sort(v.begin(), v.end(), [](int a, int b){return a > b;});
  
  std::cout << prod << std::endl;
  std::cout << any << std::endl;

  for(int i : v)
    std::cout << i << " ";
  std::cout << std::endl;
  
  return 0;
}
