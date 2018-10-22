simple TestProje
{
    gates:
        input in;
        output out;
}


network TestProjeAlani
{
    @display("bgb=732,477");
    submodules:
        Katilimci2: TestProje {
            @display("p=439,118");
        }
        Katilimci1: TestProje {
            @display("p=350,49");
        }
        Katilimci3: TestProje {
            @display("p=518,200");
        }
        Katilimci4: TestProje {
            @display("p=439,297");
        }
        Katilimci5: TestProje {
            @display("p=350,376");
        }
        Katilimci6: TestProje {
            @display("p=254,297");
        }
        Katilimci7: TestProje {
            @display("p=186,200");
        }
        Katilimci8: TestProje {
            @display("p=254,118");
        }
    connections:
        Katilimci1.out --> {  delay = 50ms; } --> Katilimci2.in;
        Katilimci2.out --> {  delay = 50ms; } --> Katilimci3.in;
        Katilimci3.out --> {  delay = 50ms; } --> Katilimci4.in;
        Katilimci4.out --> {  delay = 50ms; } --> Katilimci5.in;
        Katilimci5.out --> {  delay = 50ms; } --> Katilimci6.in;
        Katilimci6.out --> {  delay = 50ms; } --> Katilimci7.in;
        Katilimci7.out --> {  delay = 50ms; } --> Katilimci8.in;
        Katilimci8.out --> {  delay = 50ms; } --> Katilimci1.in;
}
