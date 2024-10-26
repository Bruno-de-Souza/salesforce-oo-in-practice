PurchaseOrder poOne 
                = new PurchaseOrder();
                    System.debug(poOne);

PurchaseOrder poTwo 
                = new PurchaseOrder( 
                    '1010100010'
                    , new Account(Name = 'Test'));
                    System.debug(poTwo)

PurchaseOrder poThree 
                = new PurchaseOrder(
                    '1010100010'
                   , new Account(Name = 'Test')
                   , new PurchaseOrder.Address());
                    System.debug(poThree);

PurchaseOrder poFourth
                = new PurchaseOrder(
                    '1010100010'
                   , new Account(Name = 'Test')
                   , new PurchaseOrder.Address()
                   , new PurchaseOrder.Address());
                   System.debug(poFourth); 
                   
PurchaseOrder poFifth 
                = new PurchaseOrder(
                    '1010100010'
                    , null);
                    System.debug(poFifth);                   