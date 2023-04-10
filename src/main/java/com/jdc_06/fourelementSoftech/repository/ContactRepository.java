package com.jdc_06.fourelementSoftech.repository;

import java.io.Serializable;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jdc_06.fourelementSoftech.entity.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Serializable> {

	
}
