package request;

import java.io.Serializable;

public class RequestBean implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String name;
    private String password;
    private String email;
    private String company;
    private String department;

    public String getEmail() {
        return email;
    }

    public String getCompany() {
        return company;
    }

    public String getDepartment() {
        return department;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setDepartment(String department) {
        this.department = department;
    }


    public String getUsername() {
        return name;
    }

    public void setName(String username) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}