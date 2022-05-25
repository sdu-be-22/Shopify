package kz.microhard.microgateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class MicroGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroGatewayApplication.class, args);
        System.out.println("Gateway Service is running...");
    }
}
