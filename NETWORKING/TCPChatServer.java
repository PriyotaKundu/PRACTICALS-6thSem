import java.io.*;
import java.net.*;
class TCPChatServer{
	public static void main(String[] args){
		try(ServerSocket ss = new ServerSocket(8001)){
			System.out.println("Chat Server is listening!");
			Socket socket = ss.accept();
			System.out.println("Client is connected...");
			BufferedReader buf1 = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			PrintWriter pwr = new PrintWriter(socket.getOutputStream(),true);
			BufferedReader buf2 = new BufferedReader(new InputStreamReader(System.in));
			String var1,var2;
			while(true){
				if((var1 = buf1.readLine()) != null){
					System.out.println("Received from client"+ var1);
					System.out.print("Enter message to client:");
					var2 = buf2.readLine();
					pwr.println("Server says:"+var2);
				}
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
}