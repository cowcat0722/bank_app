package com.example.bank.account;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
class AccountRepositoryTest {

    @Autowired
    private AccountRepository accountRepository;

    @Test
    public void findByUserId_test(){
        // given
        int userId = 1;

        // when
        List<Account> accountList = accountRepository.findByUserId(userId);

        // eye
        System.out.println(accountList); // 양방향 매핑이 없기 때문에 가능

        // then
    }
}