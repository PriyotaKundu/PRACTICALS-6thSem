import java.io.*;
import java.net.*;
import java.util.*;
public class UDPChatServer {
    public static void main(String[] args) {
	try{
        	DatagramSocket ss = new DatagramSocket(1234);
	System.out.println("Server is up....");
	while(true){
		byte[] rd = new byte[100];
		byte[] sd = new byte[100];
		DatagramPacket dp = new DatagramPacket(rd,rd.length);
		ss.receive(dp);
		InetAddress ip = dp.getAddress();
		int port = dp.getPort();
		String s = new String(dp.getData());
		System.out.println(s);
		Date date = new Date();
		String time = date.toString();
		sd = time.getBytes();
		DatagramPacket sp = new DatagramPacket(sd,sd.length,ip,port);
		ss.send(sp);
		System.out.println("Done");
	}}catch(Exception e){
		e.printStackTrace();	
}
	}
	}

