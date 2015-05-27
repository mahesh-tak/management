package com.management.hibernate.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;
import org.hibernate.annotations.Entity;

@javax.persistence.Entity
@Table
public class UserMaster {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_id")
	private Long userId;
	
	@Column(name="username")
	private String userName;
	
	@Column
	private String password;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name="roleusermapping",
			   joinColumns={@JoinColumn(name="user_id")},
			   inverseJoinColumns={@JoinColumn(name="role_id")})
	private Set<RoleMaster> roles=new HashSet<RoleMaster>(0);

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<RoleMaster> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleMaster> roles) {
		this.roles = roles;
	}
	
	
	
	
	
	

}
