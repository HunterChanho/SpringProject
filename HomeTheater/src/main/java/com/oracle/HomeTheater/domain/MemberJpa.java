package com.oracle.HomeTheater.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Member")
public class MemberJpa {
	@Id
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_phoneNumber;
	private String m_address;
	private String m_email;
	private String m_delchk;
	
}
