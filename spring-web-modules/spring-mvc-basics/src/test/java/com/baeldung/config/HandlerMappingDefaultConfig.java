package com.baeldung.config;

import com.baeldung.web.controller.handlermapping.BeanNameHandlerMappingController;
import com.baeldung.web.controller.handlermapping.WelcomeController;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class HandlerMappingDefaultConfig {

    @Bean("/welcome")
    public BeanNameHandlerMappingController beanNameHandlerMapping() {
        return new BeanNameHandlerMappingController();
    }

    @Bean
    public WelcomeController welcomeDefaultMappingConfig() {
        return new WelcomeController();
    }

}