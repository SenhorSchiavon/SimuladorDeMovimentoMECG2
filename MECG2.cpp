#include <iostream>
#include <cmath>
#include <complex>


using std::cout;
using std::endl;
using std::complex<double>;
using cd = complex<double>;
double PI = acos(-1);


int main(){
	
	cd num(1.0,PI);
	cd num_conj;
	Num_conj = conj(num);
		
	cout<<"Num = "<<num<<endl;
	cout<<"Conjugado = "<<Num_conj<<endl;
	return 0;
}
