class Customer
{
    public Id:number=0;
    public Name:string="";
    public City:string="";

    constructor(Id:number=0, Name:string="", City:string="")
    {
        this.Id = Id;
        this.Name = Name;
        this.City = City;
    }
    public showDetails():void
    {
        console.log("Id :" + this.Id+" Name : " + this.Name+" City :" + this.City);
    }
}

let c1:Customer = new Customer();
let c2:Customer = new Customer(10256);
let c3:Customer = new Customer(10256, "Scott");
let c4:Customer = new Customer(10256, "Scott", "Hyd");
c1.showDetails();
c2.showDetails();
c3.showDetails();
c4.showDetails();