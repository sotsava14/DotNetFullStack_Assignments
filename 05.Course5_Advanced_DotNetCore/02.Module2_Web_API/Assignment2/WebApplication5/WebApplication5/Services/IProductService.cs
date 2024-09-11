using WebApplication5.Models;

namespace WebApplication5.Services
{
    public interface IProductService
    {
        List<Product> GetAllProducts();
        Product GetProductById(int id);
        void AddProduct(Product productObj);
    }
}