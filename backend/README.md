Language:
Go
Database:
PostGresql
Central Theme : 
Two types of users -
Coin buyers
Coin owners
Coin buyers will buy the coin from the coin sellers . The Coin owner will have a fortescore , consisting of few coins . The talent price will go up and down depending on buying and selling , as it happens in stock market .
Components:
Coin owner : 
       a)User id
       b)Score id
       c)Number of fortescores
       d)Percentage of fortescores with himself
buyer/user flag
      2) Coin buyers:
        a)User id  
        b)Available coins
        c)Vector of coin users
        d)buyer/user flag
         e)Amount of profit made
      3) Fortescore: 
                  a)Score Id
                  b) Price in coins
                  c) Owner id
                
