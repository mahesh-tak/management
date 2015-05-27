package com.management.hibernate.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table
public class RoleMaster {

	public long getRoleId() {
		return roleId;
	}


	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}


	public String getRoleName() {
		return roleName;
	}


	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}


	public Set<UserMaster> getUsers() {
		return users;
	}


	public void setUsers(Set<UserMaster> users) {
		this.users = users;
	}


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="role_id")
	private long roleId;
	
	@Column(name="role_name")
	private String roleName;
	
	
	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name="roleusermapping",
			   joinColumns={@JoinColumn(name="role_id")},
			   inverseJoinColumns={@JoinColumn(name="user_id")})
	private Set<UserMaster> users=new HashSet<UserMaster>(0);
	
	
	
	

}
