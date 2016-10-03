/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

import java.util.Random;

/**
 *
 * @author alumno
 */
public class datosformulario {

    private String practica, estado, razon_no=" ";
    private int cantidad;
    Random r = new Random();
    private double concesion = r.nextDouble(), razon = r.nextDouble();

    public datosformulario() {
        this.darEstado();
    }   

    public double getConcesion() {
        return concesion;
    }

    public void setConcesion(double concesion) {
        this.concesion = concesion;        
    }

    public double getRazon() {
        return razon;
    }

    public void setRazon(double razon) {
        this.razon = razon;
    }

    public String getRazon_no() {
        return razon_no;
    }

    public void setRazon_no(String razon) {
        this.razon_no = razon;
    }

    public String getPractica() {
        return practica;
    }

    public void setPractica(String practica) {
        this.practica = practica;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    private void darEstado(){
        if (concesion < 0.5) {
            this.setEstado("Petición Autorizada.");
        } else {
            this.setEstado("Petición Denegada. ");
            if (razon < 0.33) {
                this.setRazon_no("Usted tiene demasiadas peticiones realizadas este mes.");
            }
            if (razon < 0.66 && razon > 0.33) {
                this.setRazon_no("No disponemos de esa cantidad.");
            }
            if (razon > 0.66) {
                this.setRazon_no("No queremos darselo.");
            }
        }
    }

}
