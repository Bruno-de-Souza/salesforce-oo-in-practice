public class PurchaseOrder {

    String purchasedOrder;

    Account account;

    Date needByDate;

    Address billingAddress;

    Address shippingAddress;

    List<Item> items;
    
    public PurchaseOrder() {

        this.items = new List<Item> ();
        this.needByDate = Date.today().addDays(7);

    }

    public PurchaseOrder(String purchasedOrder, Account account) {

        this();

        this.purchasedOrder = purchasedOrder;
        this.account = account;

    }


    public PurchaseOrder(String purchasedOrder
                       , Account account
                       , Address billingAddress) {

        this(purchasedOrder, account);
        this.billingAddress = billingAddress;

    }

    //Regra dos 3! Boa prática utilizar no máximo 3 parâmetros em construtores
    public PurchaseOrder(String purchasedOrder
                       , Account account
                       , Address billingAddress
                       , Address shippingAddress) {

        this(purchasedOrder, account, billingAddress);
        this.shippingAddress = shippingAddress;

    }

    public PurchaseOrder(Account account, List<Item> items) {

        this.account = account;
        this.items = items;

    }


    public class Address {
        
        public String street;
        public String streetNumber;
        public String additionalInfo;
        public String city;
        public String zipCode;
        public String state;
        public String neighborhood;

    }

    public class Item {

        public String id;
        public String productCode;
        public String description;
        public String priceBookEntry;
        public Decimal quantity;
        public Decimal prices;

    }

}