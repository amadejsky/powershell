function Kalkulator{
switch($args.Count){

    1{
        Write-Host "1--Pierwiastkowanie"
        Write-Host "2--Podniesienie do kwadratu"
        Write-Host "3--Sinus"
        Write-Host "4---Cosinus"
        Write-Host "5--Tangens"


    }
    2{
        Write-Host "6--Dodawanie"
        Write-Host "7--Odejmowanie"
        Write-Host "8--Dzielenie"
        Write-Host "9--Mnozenie"
    }
    
    default{
    Write-Error "Wybrano dzialanie z poza zakresu!"
    }
   
}
$dz=Read-Host "Wybierz dzialanie"
switch($dz){
    1{
    Try{
       return [Math]::Sqrt($args[0])
       } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     2{
     Try{
       return [Math]::Pow($args[0])
       } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     3{
     Try{
       return [Math]::Sin($args[0])
       } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     4{
     Try{
       return [Math]::Cos($args[0])
      } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     5{
     Try{
        return [Math]::Tan($args[0])
        } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     6{
     Try{
        return ($args[0])+($args[1])
        } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
     7{
        return ($args[0])-($args[1])
     }
     8{
      Try{
            return ($args[0])/($args[1])

        }Catch [System.DivideByZeroException] { Write-Error "Dzielenie przez zero nie jest możliwe!"}
        Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}

     }
     9{
     Try{
        return ($args[0])*($args[1])
        } Catch [System.InvalidCastException] {Write-Error "Zostal wprowadzony Niepoprawny operator!!!"}
     }
      default{
    Write-Error "Dzialanie z poza zakresu lub nie wprowadzono argumentu/!"
    }
}
}