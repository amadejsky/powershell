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
       return [Math]::Sqrt($args[0])
     }
     2{
       return [Math]::Pow($args[0])
     }
     3{
       return [Math]::Sin($args[0])
     }
     4{
       return [Math]::Cos($args[0])
      
     }
     5{
        return [Math]::Tan($args[0])
     }
     6{
        return ($args[0])+($args[1])
     }
     7{
        return ($args[0])-($args[1])
     }
     8{
      Try{
        return ($args[0])/($args[1])
        }Catch{[System.DivideByZeroException]}

     }
     9{
        return ($args[0])*($args[1])
     }
      default{
    Write-Error "Dzialanie z poza zakresu!"
    }
}
}
