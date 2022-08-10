/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Analizador;

import java.io.File;

/**
 *
 * @author bryan
 */

//path :::  C:\Program Files (x86)\Embarcadero\Dev-Cpp\TDM-GCC-64\bin\
public class Script {
    private final String compilerPath;
    private final String programaCppPath;
    private final String programaIPath;
    private final String programaOPath;
    private final String programaPath;
    private final String programaSPath;
    private final String projectPath;
    
    public Script(String compilerPath){
        this.compilerPath = compilerPath;
        this.projectPath = new File ("src/Archivos/").getAbsolutePath();
        programaCppPath = new File ("src/Archivos/Programa.cpp").getAbsolutePath();
        programaIPath = new File ("src/Archivos/Programa.i").getAbsolutePath();
        programaOPath = new File ("src/Archivos/Programa.o").getAbsolutePath();
        programaPath = new File ("src/Archivos/Programa.exe").getAbsolutePath();
        programaSPath = new File ("src/Archivos/Programa.s").getAbsolutePath();
    }
    
    private boolean bat(String script){
        String bat = "";
        bat += "cmd /c start cmd.exe "; //abrir cmd
        bat += "/K \" cd ";
        bat += projectPath + " && adm.bat &&";
        bat += "cd " + compilerPath + " && ";
        bat += script ;
        System.out.println(bat);
        try {
            Runtime.getRuntime().exec(bat);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    public boolean intermedio(){
        String script = "cpp "+programaCppPath+ " > "+ programaIPath;
        //String script = "cpp Programa.cpp > Programa.i";
        return bat(script);
    }
    
    public boolean assambler(){
        //String script = "g++ -Wall -S Programa.i";
        String script = "g++ -Wall -S "+programaIPath;
        return bat(script);
    }
    
    public boolean objeto(){
        String script = "as Programa.s -o Programa.o";
        //String script = "as -Wall -S " + ProgramaIPath;
        return bat(script);
    }
    
    public boolean ejecutable(){
        String script = "gcc Programa.o -o Programa";
        return bat(script);
    }
    
    public boolean start(){
        String script = "start Programa";
        return bat(script);
    }
}
