$okno = New-Object System.Windows.Forms.Form
$okno.Text="kolkwium trening"
$okno.Width=800
$okno.Height=600





$t=New-Object System.Windows.Forms.Label
$t.Text = "Wprowadz dane:"
$t.Height=100
$t.Location = New-Object System.Drawing.Size(20,30)

$wynik = New-Object System.Windows.Forms.Label
$wynik.Text="Wynik"
$wynik.Height=100
$wynik.Location = New-Object System.Drawing.Size(50,400)

$suma = New-Object System.Windows.Forms.Button
$suma.Text="Suma"
$suma.Location = New-Object System.Drawing.Size(300,30)


$pole1 = New-Object System.Windows.Forms.TextBox
$pole1.Location = New-Object System.Drawing.Size(30,100)


$pole2 = New-Object System.Windows.Forms.TextBox
$pole2.Location = New-Object System.Drawing.Size(30,200)


        Function Suma{
            $zmienna1 = [System.Convert]::ToInt32($pole1.Text)
            $zmienna2 = [System.Convert]::ToInt32($pole2.Text)
            $wynik.Text=$zmienna1*$zmienna2
            return $zmienna1+$zmienna2
        }

$suma.Add_Click({
  $wynik.Text=Suma
})


$kolor = New-Object System.Windows.Forms.ColorDialog
$wybierzK = New-Object System.Windows.Forms.Button
$wybierzK.Location = New-Object System.Drawing.Size(200,200)
$wybierzK.Text ="wybierz kolor"


$wybierzK.Add_Click({
$kolor.ShowDialog()
$Wynik.ForeColor=$kolor.Color
$okno.BackColor=$kolor.Color
})

$okno.Controls.Add($wybierzK)
$okno.Controls.Add($wynik)
$okno.Controls.Add($pole2)
$okno.Controls.Add($pole1)
$okno.Controls.Add($suma)
$okno.Controls.Add($t)
$okno.ShowDialog()
