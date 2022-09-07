//comentario una linea
/*comentarios de varios renglones */
/*todo programa en java debe de tener el nombre de la clase cual como el archivo */
class EntradaTexto {
    // limites de la clase
    // toda clase debe contener un metodo principal
    /*
     * realizaremos un programa mediente el cual podamos introducir texto a nuestra
     * conveniensia
     */
    // ; <---- es el fin de linea

    // metodo principal
    public static void main(String[] args) {
        // tipo de dato
        String nombre;
        int edad;
        // instancia = obgeto
        System.out.println("Por favor introduce tu nombre bien kwaiy");

        // obtener name del user
        nombre = System.console().readLine();
        System.out.println("Por favor introduce tu edad bien kwaiy chi:");
        edad = Integer.parseInt(System.console().readLine());
        System.out.println("Hola " + nombre + " bienvenido a tu programita, tienes " + edad + " anios");

    }
}