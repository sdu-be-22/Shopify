package kz.microhard.microauth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class MicroAuthApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroAuthApplication.class, args);
        System.out.println("Authorization Service started....");
    }
}
