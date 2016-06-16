package quickcode.controller;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;

public class RmiClient { 
  public static void main(String[] args) throws MalformedURLException, RemoteException, NotBoundException {
      String url = "rmi://localhost:1099/quickcode.controller.HelloServiceImpl"; 
      HelloService helloService = (HelloService) Naming.lookup(url);
      String result = helloService.sayHello("Jack");
      System.out.println(result);
}
}
