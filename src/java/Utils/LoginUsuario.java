
package Utils;

public class LoginUsuario {
    private String user;
    private String password;

    public LoginUsuario(String user, String password) {
        this.user = user;
        this.password = password;
    }

    public String getUsuario() {
        return user;
    }

    public String getClave() {
        return password;
    }

    public void setUsuario(String usuario) {
        this.user = user;
    }

    public void setClave(String clave) {
        this.password = password;
    }
}
