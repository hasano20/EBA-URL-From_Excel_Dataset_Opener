Function Menu 
{
    Clear-Host        
    Do
    {
        Clear-Host                                                                       
        Write-Host -Object 'Bir Secenek Seciniz'
        Write-Host     -Object '**********************'
        Write-Host -Object 'EBA PROGRAMI v2.0' -ForegroundColor Yellow
        Write-Host     -Object '**********************'
        Write-Host -Object '1.  9.SINIFLAR '
    Write-Host -Object ''
        Write-Host -Object '2.  10.SINIFLAR '
    Write-Host -Object ''
    Write-Host -Object '3.  12.SINIFLAR '
    Write-Host -Object ''
        Write-Host -Object 'Q.  Kapat'
        Write-Host -Object $errout
        $Menu = Read-Host -Prompt '(0-3 ya da Kapatmak icin Q)'
 
        switch ($Menu) 
        {
           1 
            {
               powershell -noexit python eba9.py            
                
            }
            2 
            {
                python eba10.py 

            }
            3 
            {
                python eba12.py

            }
            Q 
            {
                Exit
            }   
            default
            {
                $errout = 'Yanlis girdiniz. Tekrar 1,2,3 veya Q'
            }
 
        }
    }
    until ($Menu -eq 'q')
}   
 
# Launch The Menu
Menu