import java.util.*;
import java.net.*;
import java.io.*;
public class UDPChatClient{
    public static void main(String[] args) {
	try{
        	DatagramSocket cs = new DatagramSocket();
	System.out.println("Server Time....");
	InetAddress ip = InetAddress.getByName("localhost");
	byte[] rd = new byte[100];
	byte[] sd = new byte[100];
	String s = "Good Morning!";
	sd = s.getBytes();
	DatagramPacket sp = new DatagramPacket(sd,sd.length,ip,1234);
	DatagramPacket rp = new DatagramPacket(rd,rd.length);
	cs.send(sp);
	cs.receive(rp);
	String time = new String(rp.getData());
	System.out.println(time);
	cs.close();
	}catch(Exception e){
		e.printStackTrace();	
		}
	}
}

