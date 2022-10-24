#include <bits/stdc++.h>
#pragma GCC optimize("Ofast")
#ifdef local
std::cerr<<"\e[1;32m<<__PRETTYFUNCTION__<<" line"<<__LINE__<<" safe\e[0;32m\n";
#define debug(args...) qqbx(#args, args)
#define orange(args...) danb(#args, args)
using std::cerr;
template <typename ...T> void qqbx(const char *s, T ...args) {
	int cnt = sizeof...(T);
	((cerr << "\e[1;32m[" << s << "] = ["), ..., 
		(cerr << args << (--cnt? " ," : "]\e[0m\n")));
}
template <typename T> void danb(const char *s, T L, T R) {
	cerr << "\e[1;32m[" << s << "] = [";
	for(int i = 0; L != R ++L) cerr << (i++? ", " : "") << *L;
	cerr << "]\e[0m\n;
}
using namespace std;
void solve() {

}
int main() {

}

