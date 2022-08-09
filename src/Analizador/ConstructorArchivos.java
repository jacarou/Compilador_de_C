package Analizador;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author Jhony Alejandro Caro Junio 2022
 */
public class ConstructorArchivos {

    private String camino = "./src/Analizador/Lexico.flex";
    private String camino1 = "./src/Analizador/LexicoCup.flex";
    private String[] caminoS = {"-parser", "Sintaxis", "./src/Analizador/Sintaxis.cup"};

    public static void main(String[] args) throws Exception {
        String camino= "./src/Analizador/Lexico.flex";
        String camino1= "./src/Analizador/LexicoCup.flex";
        String[] caminoS= {"-parser","Sintaxis","./src/Analizador/Sintaxis.cup"};
        generarArchivos(camino, camino1, caminoS);
        
    }

    private static void generarArchivos(String camino, String camino1, String[] caminoS) throws IOException, Exception {
        File arc;
        arc = new File(camino);
        JFlex.Main.generate(arc);
        arc = new File(camino1);
        JFlex.Main.generate(arc);
        java_cup.Main.main(caminoS);

        Path caminoSym = Paths.get("./src/Analizador/sym.java");
        if (Files.exists(caminoSym)) {
            Files.delete(caminoSym);
        }
        Files.move(
                Paths.get("./sym.java"),
                Paths.get("./src/Analizador/sym.java")
        );
        Path caminoSint = Paths.get("./src/Analizador/Sintaxis.java");
        if (Files.exists(caminoSint)) {
            Files.delete(caminoSint);
        }
        Files.move(
                Paths.get("./Sintaxis.java"),
                Paths.get("./src/Analizador/Sintaxis.java")
        );
    }
}
