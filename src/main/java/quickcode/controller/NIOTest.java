package quickcode.controller;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class NIOTest {
public static void main(String[] args) throws IOException {
    RandomAccessFile raf =   new RandomAccessFile("E:\\personal\\https修改.txt", "rw");
    FileChannel  channel = raf.getChannel();
    ByteBuffer buffer = ByteBuffer.allocate(48);
    int byteRead = channel.read(buffer);
    while(byteRead != -1){
        buffer.flip();
        while(buffer.hasRemaining()){
            System.out.println(buffer.get());
            buffer.clear();
            byteRead = channel.read(buffer);
        }
    }
    raf.close();

}
}
