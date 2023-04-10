package com.jdc_06.fourelementSoftech.service;

import java.util.List;

import com.jdc_06.fourelementSoftech.entity.Contact;

public interface ContactServiceI {

	public boolean saveContact(Contact contact);

	public List<Contact> getAllContacts();

	public Contact getContactById(Integer contactId);

	public boolean deleteContactById(Integer contactId);

}
