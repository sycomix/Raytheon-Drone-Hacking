.class public final Lcom/crittercism/internal/x;
.super Ljava/net/PlainSocketImpl;

# interfaces
.implements Lcom/crittercism/internal/z;


# instance fields
.field private a:Lcom/crittercism/internal/w;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 58
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->a:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/c;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/crittercism/internal/x;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/crittercism/internal/x;->getPort()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3195
    iget-object v3, v2, Lcom/crittercism/internal/w;->a:Lcom/crittercism/internal/k$a;

    invoke-virtual {v2, v0, v1, v3}, Lcom/crittercism/internal/w;->a(Ljava/net/InetAddress;Ljava/lang/Integer;Lcom/crittercism/internal/k$a;)Lcom/crittercism/internal/c;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/c;)V

    .line 126
    return-void
.end method

.method public final b()Lcom/crittercism/internal/c;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->b()Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    .line 67
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->a()V

    .line 68
    return-void
.end method

.method public final connect(Ljava/lang/String;I)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    invoke-virtual {p0}, Lcom/crittercism/internal/x;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 76
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    const/4 v5, 0x0

    move v3, p2

    move-object v4, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljava/net/InetAddress;ILjava/lang/String;Lcom/crittercism/internal/k$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    :cond_0
    :goto_0
    throw v1

    .line 1145
    :catch_1
    move-exception v0

    throw v0

    .line 1147
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "ipAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 84
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    .line 2128
    if-eqz p1, :cond_0

    .line 2129
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljava/net/InetAddress;ILjava/lang/String;Lcom/crittercism/internal/k$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    :cond_0
    :goto_0
    throw v1

    .line 2132
    :catch_1
    move-exception v0

    throw v0

    .line 2134
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I

    .prologue
    .line 94
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    iget-object v0, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    .line 3116
    if-eqz p1, :cond_0

    :try_start_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    .line 3117
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 3118
    .end local p1    # "addr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 3119
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 3120
    if-eqz v2, :cond_0

    .line 3121
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljava/net/InetAddress;ILjava/lang/String;Lcom/crittercism/internal/k$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    :cond_0
    :goto_0
    throw v1

    .line 3109
    :catch_1
    move-exception v0

    throw v0

    .line 3111
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Ljava/net/PlainSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/crittercism/internal/x;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public final setOption(ILjava/lang/Object;)V
    .locals 0
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 145
    return-void
.end method
