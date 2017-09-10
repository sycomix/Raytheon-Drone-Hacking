.class Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;
.super Landroid/os/Handler;
.source "MdnsSdMin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;->this$1:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 347
    const-string v3, "MdnsSdMin"

    const-string v4, "sending query packet"

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;->this$1:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;

    iget-object v3, v3, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->access$300(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdOutgoingQuery;->encode()[B

    move-result-object v0

    .line 351
    .local v0, "buf":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    const-string v4, "224.0.0.251"

    .line 352
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x14e9

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 353
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;->this$1:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->access$400(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0    # "buf":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "MdnsSdMin"

    const-string v4, "unable to start query"

    invoke-static {v3, v4, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
