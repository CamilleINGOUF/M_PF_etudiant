#include <algorithm>
#include <functional>
#include <iostream>

int main()
{
  std::vector<int> liste1 = {1,2,3};
  std::vector<int> liste2;

  std::for_each(liste1.begin(), liste1.end(), [&liste2](int n){liste2.push_back(n+42);});

  auto printListe = [&liste2](std::ostream & os) {
        std::for_each(liste2.begin(), liste2.end(), [&os](int n){ os << n << ' ';});
        os << std::endl;
    };

  printListe(std::cout);
  
  return 0;
}
