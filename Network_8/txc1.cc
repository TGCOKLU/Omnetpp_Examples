#include <string.h>
    #include <omnetpp.h>

    using namespace omnetpp;


    class TestProje : public cSimpleModule
    {
      protected:

        virtual void initialize() override;
        virtual void handleMessage(cMessage *msg) override;
    };


    Define_Module(TestProje);

    void TestProje::initialize()
    {

        if (strcmp("Katilimci1", getName()) == 0) {

            cMessage *msg = new cMessage("Deneme Mesaj Gonderme");
            send(msg, "out");
        }
    }

    void TestProje::handleMessage(cMessage *msg)
    {

        send(msg, "out");
    }
