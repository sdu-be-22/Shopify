# Shopify
### Project architecture

![image](https://user-images.githubusercontent.com/80455527/167078350-7c67ff3f-91f9-4d8e-a0ab-1fcc4cee474c.png)

### Tools and Technologies

- **Java 8**
- **Spring Boot**
- **Spring Web MVC**
- **Spring Cloud - Open Feign** 
- **Netflix Zuul** 
- **Netflix Eureka Client/Server** 
- **Spring Data JPA** 
- **Hibernate** 
- **SQL Database engine** : PostgreSQL
- **Maven**

### Microservices
1. **AUTH :**
   - **API :**
     - POST(auth-service/oauth/token) 
   
   - **Model :**
     - Username: String
     - Password: String
     - Email: String
     - Enbaled: Boolean
     - AccountNonExpired: Boolean
     - CredentialsNonExpired: Boolean
     - AccountNonLocked: Boolean

2. **Product :**
   - **API :**
     - Get(product/list) 
     - getProductList(): List<Product> 
     - Get(products/{id}) getProduct(id: int): Product
   
   - **Model :**
     - Name: String
     - Price: Int
     - ShopCenter: Address
     - Rating: Double
     - Description: String
     - Image: String

3. **Sales :**
   - **API :*
     - Get(sales/list) 
     - getSalesList(): List<Sales> 
     - Get(sales/{id}) getSales(id: int): Sales
   
   - **Model :*
     - Name: String
     - Price: Int
     - ShopCenter: Address
     - Rating: Double
     - Description: String
     - Image: String
   

### Features

1. **Administrator :**

   - Users management
   - Products management
   - Orders management
   - Recommendations management

2. **User** :

   - Registration
   - Shopping cart (for guest or logged user)
   - Order
   - Product recommendation 
   - Product catalog
   
### Status:

**Application status :** DEMO

### Contact:

Email : 190113004@tu.sdu.edu.kz  |  190103140@stu.sdu.edu.kz

