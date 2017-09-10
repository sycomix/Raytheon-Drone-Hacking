.class public final Lcom/crittercism/internal/u;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;

# interfaces
.implements Lcom/crittercism/internal/z;


# instance fields
.field private a:Lcom/crittercism/internal/w;


# direct methods
.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 36
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/c;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/crittercism/internal/u;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/w;->a(Ljava/net/InetAddress;)Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/c;)V

    .line 52
    return-void
.end method

.method public final b()Lcom/crittercism/internal/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->b()Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;->close()V

    .line 72
    iget-object v0, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->a()V

    .line 73
    return-void
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public final startHandshake()V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/crittercism/internal/u;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, v0, p0}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljavax/net/ssl/SSLSocket;)V

    .line 65
    throw v0
.end method
