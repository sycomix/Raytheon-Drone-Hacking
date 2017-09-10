.class public final Lcom/crittercism/internal/t;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;

# interfaces
.implements Lcom/crittercism/internal/z;


# instance fields
.field private a:Lcom/crittercism/internal/w;


# direct methods
.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 63
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p3, p4, p5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 73
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 96
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    .line 98
    return-void
.end method

.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p3, p4, p5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 83
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 107
    new-instance v0, Lcom/crittercism/internal/w;

    sget-object v1, Lcom/crittercism/internal/k$a;->b:Lcom/crittercism/internal/k$a;

    invoke-direct {v0, v1, p1, p2}, Lcom/crittercism/internal/w;-><init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    iput-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/c;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/crittercism/internal/t;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/w;->a(Ljava/net/InetAddress;)Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/c;)V

    .line 133
    return-void
.end method

.method public final b()Lcom/crittercism/internal/c;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->b()Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->close()V

    .line 153
    iget-object v0, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v0}, Lcom/crittercism/internal/w;->a()V

    .line 154
    return-void
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, p0, v0}, Lcom/crittercism/internal/w;->a(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public final declared-synchronized getSoTimeout()I
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startHandshake()V
    .locals 2

    .prologue
    .line 143
    :try_start_0
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/crittercism/internal/t;->a:Lcom/crittercism/internal/w;

    invoke-virtual {v1, v0, p0}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljavax/net/ssl/SSLSocket;)V

    .line 146
    throw v0
.end method
