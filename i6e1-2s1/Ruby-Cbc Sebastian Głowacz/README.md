#MiNWD lab1
Sebastian Głowacz, I6E1S1
biblioteka: Ruby-Cbc
#Opis
Jest to biblioteka zawierająca mechanizmy programowania liniowego, pozwalająca na rozwiązywanie
zadań optymalizacyjnych w ruby. Za pomocą Ruby-Cbc można zamodelować swój problem, rozwiązać i
w przypadku znalezienie niezgodności, rozwiązać je.
#Instalacja
Najpierw do Gemfile naszej aplikacji należy dodać linię: gem 'ruby-cbc'
i następnie wykonać: $ bundle
lub zainstalować ręcznie przez: $ gem install ruby-cbc
Ten gem zawiera biblitokę Coin-Or Cbc, jeśli korzystamy z systemu innego niż 64bitowy linux 
pobierze się sama i zrekompiluje podczas instalacji.
#Przykładowe zadanie
Przykładowe zadanie rozwiązywalne przez Ruby-Cbc umieściłem w pliku zadanie.rb