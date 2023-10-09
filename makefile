all:AggregationServer.class ContentServer.class GETClient.class

AggregationServer.class: AggregationServer.java OldDataHandler.class ClientHandler.class
	javac AggregationServer.java
ClientHandler.class: ClientHandler.java
	javac ClientHandler.java
OldDataHandler.class: OldDataHandler.java
	javac OldDataHandler.java

ContentServer.class: ContentServer.java
	javac ContentServer.java

GETClient.class: GETClient.java
	javac GETClient.java

run_multiple_content_server:
	java ContentServer localhost:4567
	
