package crud;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author gabrielhs, jahaziel y david
 */

@Entity
@Table(name = "empleados")
public class Empleado {
@Id
//hacer que sea un consecutivo
@Column
    private Long id;
@Column
    private String nombre;
@Column
    private String direccion;
@Column
    private String telefono;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Empleado{" + "id=" + id + ", nombre=" + nombre + ", direccion=" + direccion + ", telefono=" + telefono + '}';
    }

}
