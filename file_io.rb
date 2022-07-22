def method_name
 @file.open('test.csv',"a+")
   @file.write ["WinnerName"]
  @file.write ["#{player1}"]
end
