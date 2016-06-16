package quickcode.controller;

public class HighThreadTest  {

    private  int a =0 ;
    private void add(){
        a++;
    }
    public static void main(String[] args) {
        final HighThreadTest htt = new HighThreadTest();

        for(int i = 0 ;i<10;i++){
            new Thread(){
                @Override
                 public void run(){
                    for(int i = 0;i<1000;i++){
                      htt.add();    
                    }
                 }
             }.start();
        }
        while(Thread.activeCount()>1){
            Thread.yield();
        }
        System.out.println(htt.a);
    
    }

}
