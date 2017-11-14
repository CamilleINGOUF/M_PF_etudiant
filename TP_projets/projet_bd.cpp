// g++ -std=c++11 -Wall -Wextra -o projet_bd.out projet_bd.cpp
#include <iostream>
#include <map>
#include <string>
#include <functional>
#include <algorithm>
using namespace std;

using Contact = pair<string,string>;

ostream & operator<<(ostream & os, const Contact & c) {
  os << "(" << c.first << ", " << c.second << ")";
  return os;
}

class Base {
    private:
        map<string,string> _data;

public:
  bool search(const string & name) const {
    return _data.find(name) != _data.end();
  }

  void insert(const Contact & contact) {
    if(!search(contact.first))
      _data.insert(contact);
  }

  void update(const Contact & contact) {
    if(!search(contact.first))
      _data.insert(contact);
    else {
      auto it = _data.find(contact.first);
      it->second = contact.second;
    }
  }

  void remove(const string & name) {
    _data.erase(_data.find(name));
  }

  friend ostream & operator<<(ostream & os, const Base & b);
};

ostream & operator<<(ostream & os, const Base & b) {
  os << "[";
  for(auto it = b._data.begin(); it != b._data.end(); it++) {
    os << "(" << it->first << ", " << it->second << ")";
  }
  os << "]";
  return os;
}

int main()
{
  Base base;
  base.insert({"Camille","xyz@jk.gh"});
  cout << base << endl;
  
  cout << "====================" << endl;
  base.insert({"Camille","xyz@jk.gh"});
  cout << base << endl;
  
  cout << "====================" << endl;
  cout << base.search("Camille") << endl;
  
  cout << "====================" << endl;
  cout << base.search("Axel") << endl;

  cout << "====================" << endl;
  base.update({"Camille","update@mail.com"});
  cout << base << endl;

  cout << "====================" << endl;
  base.update({"Axel","oui@mail.com"});
  cout << base << endl;

  cout << "====================" << endl;
  base.remove("Camille");
  cout << base << endl;
  
  return 0;
}
