.class public Lcom/parrot/freeflight/network/InternetConnectionChecker;
.super Ljava/lang/Object;
.source "InternetConnectionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;
    }
.end annotation


# static fields
.field private static final DNS_PORT:I = 0x35

.field private static final GOOGLE_PUBLIC_DNS_IP:Ljava/lang/String; = "8.8.8.8"

.field private static final HTTP_PORT:I = 0x50

.field private static final TIMEOUT:I = 0x7d0


# instance fields
.field private final mListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker;->mListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/network/InternetConnectionChecker;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetConnectionChecker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->canConnectTo(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private canConnectTo(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "isInternetReachable":Z
    const/4 v2, 0x0

    .line 74
    .local v2, "socket":Ljava/net/Socket;
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v2    # "socket":Ljava/net/Socket;
    .local v3, "socket":Ljava/net/Socket;
    :try_start_1
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    const/4 v1, 0x1

    .line 80
    if-eqz v3, :cond_2

    .line 82
    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 88
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    :cond_0
    :goto_0
    return v1

    .line 83
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 85
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    if-eqz v2, :cond_0

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v4

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 82
    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 85
    :cond_1
    :goto_3
    throw v4

    .line 83
    :catch_3
    move-exception v5

    goto :goto_3

    .line 80
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_2

    .line 77
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_1

    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :cond_2
    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_0
.end method


# virtual methods
.method public check(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/16 v4, 0x7d0

    .line 57
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/parrot/freeflight/network/ConnectivityChecker;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "8.8.8.8"

    const/16 v3, 0x35

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->canConnectTo(Ljava/lang/String;II)Z

    move-result v1

    .line 61
    .local v1, "hasInternet":Z
    if-nez v1, :cond_0

    .line 63
    const-string v2, "8.8.8.8"

    const/16 v3, 0x50

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->canConnectTo(Ljava/lang/String;II)Z

    move-result v1

    .line 67
    .end local v1    # "hasInternet":Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected notifyListener(Z)V
    .locals 1
    .param p1, "hasInternet"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker;->mListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker;->mListener:Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;->onCheck(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public performCheck(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/parrot/freeflight/network/ConnectivityChecker;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;-><init>(Lcom/parrot/freeflight/network/InternetConnectionChecker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->notifyListener(Z)V

    goto :goto_0
.end method
