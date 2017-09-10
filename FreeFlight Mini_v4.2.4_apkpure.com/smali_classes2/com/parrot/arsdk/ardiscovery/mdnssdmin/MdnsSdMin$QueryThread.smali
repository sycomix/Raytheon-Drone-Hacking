.class Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;
.super Landroid/os/HandlerThread;
.source "MdnsSdMin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private final socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .line 333
    const-string v0, "MdnsSd-query"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 334
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->socket:Ljava/net/DatagramSocket;

    .line 335
    return-void
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;)Ljava/net/DatagramSocket;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread$1;-><init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->access$202(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Landroid/os/Handler;)Landroid/os/Handler;

    .line 361
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->sendQueries()V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$QueryThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
