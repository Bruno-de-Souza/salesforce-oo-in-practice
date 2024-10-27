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

List<PurchaseOrder.Item> items 
                        = new List<PurchaseOrder.Item>();                    

PurchaseOrder.Item item 
                        = new PurchaseOrder.Item();

item.id = '1111111';
item.description = 'Teste Item';
item.priceBookEntry = '1111111111111111';
item.prices = 100.00;
item.productCode = '01010101';
item.quantity = 500.00;

items.add(item);

System.debug(items);

PurchaseOrder poAddItem 
                        = new PurchaseOrder();

PurchaseOrder.Item itemII 
                        = new PurchaseOrder.Item();

itemII.id = '1111111';
itemII.description = 'Teste Item';
itemII.priceBookEntry = '1111111111111111';
itemII.prices = 100.00;
itemII.productCode = '01010101';
itemII.quantity = 500.00;

poAddItem.addItem(itemII);

System.debug(poAddItem);

PurchaseOrder poAddItemII
                        = new PurchaseOrder();

poAddItemII.addItem(new PurchaseOrder.Item()
                            .withId('11111111')
                            .withProductCode('0101010101')
                            .withDescription('Teste Item')
                            .withpriceBookEntry('100.00')
                            .withQuantity(100.00)
                            .withPrices(550.00) );

System.debug(poAddItemII);