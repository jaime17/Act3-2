//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

import Foundation

class FetchClass 
{
    //Variables
    var vector: [Int] = []
    //Functions
    func fetch(item: Int)->Int 
    {
        preconditionFailure("This method must be overridden")
    }
    func setV(v: [Int])
	{
        self.vector = v
    }
    func setV(n:Int)->[Int] 
	{
        var v:[Int] = [Int]()
        for _ in 0...(n-1) 
		{ 
            v.append(random() % 100) 
        }
        return v
}
    func getV()->[Int] 
    {
        return self.vector
    }
    func showV() 
	{
        let n:Int = self.vector.count-1
        var string = "Los valores del arreglo son: "
        for(index) in 0...n
		{
            string+=String(self.vector[index])
            string+=","
        }
        print(string)
    }
    func showF(n: Int) 
	{
        if(n==(-1))
		{
			print("El valor no se encuentra en el vector")
		}
        else
        {
			print("El valor se encuentra en la posición  \(n)")
		}
    }
}

class binary: FetchClass, order
{
    override func fetch(item: Int) -> Int {
        var inicio: Int = 0
        var fin: Int = self.vector.count-1  
		var centro: Int = (inicio+fin)/2  
		
        while(inicio < fin)
		{
			let valorCentro:Int = self.vector[centro] 
            if(valorCentro == item)
			{
				return centro 
			}
			else
			{
				if(item < valorCentro)
				{
                	fin = centro
					centro = (inicio + fin)/2
            	} 
				else 
				{
                	inicio = centro;
					centro = (inicio + fin)/2;
            	}
			}  
        }
        return -1
    }
	func selection (v: [Int]) ->[Int]
	{
		var vector : [Int] = v
		var aux : Int
		for i in 0...vector.count-1
		{
			var m :Int = i;
            for (j) in 1...vector.count-1
			{
				if(vector[j]<vector[m])
				{
					m = j;
				}
			}
			aux = vector [i]
			vector [i] = vector [m]
			vector [m] = aux
        }
		return vector
	}
}

class secuential: FetchClass
{
    override func fetch(item: Int) -> Int {
        let n:Int = self.vector.count-1
        for i in 0...n
		{
            if(self.vector[i] == item)
			{
				return i
			}
        }
        return -1
    }
}
protocol order 
{
	 func selection (v : [Int]) -> [Int]
}

var vector: [Int] = [3,4,5,8,15,26,37,58,49] 

print("Testing the secuential class")
var sec: secuential = secuential()
sec.setV(v: sec.setV(n: 50))
sec.showV()
print("Searching for 3")
sec.showF(n: sec.fetch(item: 3))
print("Testing the binary class")
//Testing "binary" class
var bin: binary = binary()
print ("Searching for 5")
bin.setV(v: vector)
bin.showV()
bin.showF(n: bin.fetch(item:5))
