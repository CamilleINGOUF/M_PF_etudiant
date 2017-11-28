// g++ -std=c++11 -Wall -Wextra -O2 -o listes.out listes.cpp
// ./listes.out

#include <iostream>
#include <fstream>
#include <vector>

struct Element {
    int val;
    Element *nxt;
};

class Liste {
private :
  Element* head;
public :
  Liste() : head(nullptr)
  {}
  
  ~Liste(){}
  
  std::string showListe() const {
    Element* copy = head;
    std::string str;
    while(copy != NULL) {
      str += copy->val + " ";
      copy = copy->nxt;
    }
    str += "\n";
    return str;
  }
  
  void convertListe(std::vector<int> vec)
  {
    Element* list = NULL;
    std::cout << vec.size() << std::endl;
    for(unsigned i = vec.size() - 1; i >= 0; i--) {
      Element* elem = new Element;
      elem->val = vec[i];
      elem->nxt = list;
    }
    head = list;
  }
};

int main() {
  Liste li;
  std::vector<int> vec{5,2,6,3,6,5,6,4,8,6};
  li.convertListe(vec);
  std::cout << li.showListe();
  return 0;
}
