class product
{
    public ProductId:number=0;
    public ProductName:string="";
    public UnitPrice:number=0;
    public Qty:number=0;

    constructor(ProductId:number=0)
    {
        this.ProductId = ProductId;
    }
    public getTotal():void
    {
        console.log("Total Price : " + (this.UnitPrice)*(this.Qty));
    }
    public showDetails():void
    {
        console.log("ProductId :" + this.ProductId);
        console.log("ProductName : " + this.ProductName);
        console.log("UnitPrice :" + this.UnitPrice);
        console.log("Quantity :" + this.Qty);
    }
}

let p1:product = new product(123);
p1.ProductName="Mobile";
p1.UnitPrice=100;
p1.Qty=3;
p1.showDetails();
p1.getTotal();

