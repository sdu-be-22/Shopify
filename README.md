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
   **Get Access Token**
   Now hit the POST method URL via postman to get the oauth2 token.

   **`http://localhost:8180/auth-api/oauth/token`**

   Now, add the Request Headers as follows −
   ![Снимок экрана (77)](https://user-images.githubusercontent.com/80455527/170189393-74db8b6b-7b6d-4bec-8fbf-ce066168d49e.png)

   Now, add the Request body as follows −
   ![Снимок экрана (78)](https://user-images.githubusercontent.com/80455527/170189413-10fb8a34-3df1-464e-b058-3d39115c2697.png)

      **HTTP POST Response**
      ```
      { 
         "access_token":"000ff762-414c-4605-858a-0ed7bee6f68e",
         "token_type":"bearer",
         "refresh_token":"79aabc70-f310-4c49-bf7e-516208b3bef4",
         "expires_in":999999,
         "scope":"read write"
      }
      ```

2. **Product :**
   - **API :**
     - Get(product/list) getProductList(): List<Product> 
     - Get(products/{id}) getProduct(id: int): Product
   
   - **Model :**
     - Name: String
     - Price: Int
     - ShopCenter: Address
     - Rating: Double
     - Description: String
     - Image: String

3. **Sales :**
   - **API :*
     - Get(sales/list) getSalesList(): List<Sales> 
     - Get(sales/{id}) getSales(id: int): Sales
   
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

