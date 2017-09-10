.class public interface abstract Lorg/mortbay/jetty/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;
.implements Lorg/mortbay/io/Buffers;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConfidentialPort()I
.end method

.method public abstract getConfidentialScheme()Ljava/lang/String;
.end method

.method public abstract getConnection()Ljava/lang/Object;
.end method

.method public abstract getConnections()I
.end method

.method public abstract getConnectionsDurationAve()J
.end method

.method public abstract getConnectionsDurationMax()J
.end method

.method public abstract getConnectionsDurationMin()J
.end method

.method public abstract getConnectionsDurationTotal()J
.end method

.method public abstract getConnectionsOpen()I
.end method

.method public abstract getConnectionsOpenMax()I
.end method

.method public abstract getConnectionsOpenMin()I
.end method

.method public abstract getConnectionsRequestsAve()I
.end method

.method public abstract getConnectionsRequestsMax()I
.end method

.method public abstract getConnectionsRequestsMin()I
.end method

.method public abstract getHeaderBufferSize()I
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getIntegralPort()I
.end method

.method public abstract getIntegralScheme()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getLowResourceMaxIdleTime()I
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getRequestBufferSize()I
.end method

.method public abstract getRequests()I
.end method

.method public abstract getResolveNames()Z
.end method

.method public abstract getResponseBufferSize()I
.end method

.method public abstract getServer()Lorg/mortbay/jetty/Server;
.end method

.method public abstract getStatsOn()Z
.end method

.method public abstract getStatsOnMs()J
.end method

.method public abstract isConfidential(Lorg/mortbay/jetty/Request;)Z
.end method

.method public abstract isIntegral(Lorg/mortbay/jetty/Request;)Z
.end method

.method public abstract newContinuation()Lorg/mortbay/util/ajax/Continuation;
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract persist(Lorg/mortbay/io/EndPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setHeaderBufferSize(I)V
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setLowResourceMaxIdleTime(I)V
.end method

.method public abstract setMaxIdleTime(I)V
.end method

.method public abstract setPort(I)V
.end method

.method public abstract setRequestBufferSize(I)V
.end method

.method public abstract setResponseBufferSize(I)V
.end method

.method public abstract setServer(Lorg/mortbay/jetty/Server;)V
.end method

.method public abstract setStatsOn(Z)V
.end method

.method public abstract statsReset()V
.end method
