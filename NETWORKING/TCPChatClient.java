import java.io.*;
import java.net.*;
class TCPChatClient{
	public static void main(String[] args){
		try(Socket socket = new Socket("localhost",8001)){
			System.out.println("Connected to Server!");
			BufferedReader buf1 = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			PrintWriter pwr = new PrintWriter(socket.getOutputStream(),true);
			BufferedReader buf2 = new BufferedReader(new InputStreamReader(System.in));
			String var1,var2;
			while(true){
				System.out.print("Enter message to client:");
				var2 = buf2.readLine();
				pwr.println("Server says:"+var2);
				if((var1 = buf1.readLine()) != null){
					System.out.println("Server Response:"+ var1);
				}
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
}