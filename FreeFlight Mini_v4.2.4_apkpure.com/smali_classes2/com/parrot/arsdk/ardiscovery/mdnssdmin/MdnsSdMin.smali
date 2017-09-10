.class public Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
.super Ljava/lang/Object;
.source "MdnsSdMin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;,
        Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;,
        Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;
    }
.end annotation


# static fields
.field private static final QUERY_DURATION_MS:I = 0x1388

.field private static final QUERY_INTERVAL_MS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "MdnsSdMin"


# instance fields
.field private final MDNS_MULTICAST_ADDR:Ljava/lang/String;

.field private final MDNS_MULTICAST_PORT:I

.field private final listener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

.field private final query:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;

.field private queryHandler:Landroid/os/Handler;

.field private queryThread:Landroid/os/HandlerThread;

.field private receiveThread:Ljava/lang/Thread;

.field private final services:[Ljava/lang/String;

.field private socket:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;)V
    .locals 1
    .param p1, "services"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "224.0.0.251"

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->MDNS_MULTICAST_ADDR:Ljava/lang/String;

    .line 134
    const/16 v0, 0x14e9

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->MDNS_MULTICAST_PORT:I

    .line 144
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->services:[Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->listener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    .line 147
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;

    invoke-direct {v0, p1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->query:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->services:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->listener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->query:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;

    return-object v0
.end method


# virtual methods
.method public cancelSendQueries()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "MdnsSdMin"

    const-string v1, "Cancel sending queries"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    return-void
.end method

.method public sendQueries()V
    .locals 6

    .prologue
    .line 215
    const-string v1, "MdnsSdMin"

    const-string v2, "Sending queries"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    add-int/lit16 v0, v0, 0xfa

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public start(Ljava/net/NetworkInterface;)V
    .locals 5
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;

    .prologue
    .line 156
    const-string v1, "MdnsSdMin"

    const-string v2, "Starting MdsnSd"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    if-nez v1, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    const/16 v2, 0x14e9

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    .line 163
    if-eqz p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 167
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "224.0.0.251"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x14e9

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 175
    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    invoke-direct {v1, p0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;-><init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Ljava/net/DatagramSocket;)V

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->receiveThread:Ljava/lang/Thread;

    .line 176
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 178
    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    invoke-direct {v1, p0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;-><init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Ljava/net/DatagramSocket;)V

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryThread:Landroid/os/HandlerThread;

    .line 179
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    const-string v2, "224.0.0.251"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MdnsSdMin"

    const-string v2, "unable to start MdsnSd"

    invoke-static {v1, v2, v0}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v0, "MdnsSdMin"

    const-string v1, "Stopping MdsnSd"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 197
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->socket:Ljava/net/MulticastSocket;

    .line 198
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->receiveThread:Ljava/lang/Thread;

    .line 199
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->queryThread:Landroid/os/HandlerThread;

    .line 205
    :cond_0
    return-void
.end method
