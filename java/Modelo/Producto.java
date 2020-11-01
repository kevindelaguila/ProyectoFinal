/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

public class Producto {
    private int idproducto;
    private String nombreproductos;
    private String descripcionproductos;
    private int precioproductos;

    public Producto(int idproducto, String nombreproductos, String descripcionproductos, int precioproductos) {
        this.idproducto = idproducto;
        this.nombreproductos = nombreproductos;
        this.descripcionproductos = descripcionproductos;
        this.precioproductos = precioproductos;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getNombreproductos() {
        return nombreproductos;
    }

    public void setNombreproductos(String nombreproductos) {
        this.nombreproductos = nombreproductos;
    }

    public String getDescripcionproductos() {
        return descripcionproductos;
    }

    public void setDescripcionproductos(String descripcionproductos) {
        this.descripcionproductos = descripcionproductos;
    }

    public int getPrecioproductos() {
        return precioproductos;
    }

    public void setPrecioproductos(int precioproductos) {
        this.precioproductos = precioproductos;
    }
    
    
}
