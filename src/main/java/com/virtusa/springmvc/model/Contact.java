package com.virtusa.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "contact")
public class Contact {
	@Column(name = "NAME")
	@NotEmpty(message = "cannot be empty")
	private String name;
	@Id
	@Column(name = "EMAIL")
	@NotNull
	@NotEmpty(message = "cannot be empty")
	private String email;

	@Column(name = "MESSAGE")
	@NotNull
	@NotEmpty(message = "cannot be empty")
	private String message;

	public Contact() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Contact [Name=" + name + ", Email=" + email + ", Message=" + message + "]";
	}

}
