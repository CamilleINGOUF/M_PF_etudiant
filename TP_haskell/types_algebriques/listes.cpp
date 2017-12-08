// g++ -std=c++11 -Wall -Wextra -O2 -o listes.out listes.cpp
// ./listes.out

#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>

template<typename T>

class Liste {
  struct Element {
    T val;
    Element *nxt;
  };
  Element* head;
public :
  Liste() : head(nullptr)
  {}
  
  ~Liste(){}
  
  std::string showListe() const {
    Element* copy = head;
    std::ostringstream str;
    while(copy != NULL) {
      str << copy->val << " ";
      copy = copy->nxt;
    }
    str << "\n";
    return str.str();
  }
  
  void convertListe(std::vector<T> & vec)
  {
    for (auto it = vec.cbegin(); it != vec.cend(); ++it) {
      head = new Element{*it,head};
    }
  }
};

int main() {
  Liste<int> li;
  std::vector<int> vec{5,2,6,3,6,5,6,4,8,6};
  li.convertListe(vec);
  std::cout << li.showListe();
  return 0;
}
