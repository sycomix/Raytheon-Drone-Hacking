.class public final Lcom/crittercism/internal/l;
.super Ljava/io/OutputStream;

# interfaces
.implements Lcom/crittercism/internal/ah;


# instance fields
.field a:Ljava/io/OutputStream;

.field private b:Lcom/crittercism/internal/z;

.field private c:Lcom/crittercism/internal/c;

.field private d:Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output stream was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    .line 34
    iput-object p2, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    .line 35
    invoke-virtual {p0}, Lcom/crittercism/internal/l;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    .line 37
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 93
    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/crittercism/internal/aa;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    throw v0

    .line 97
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 99
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    goto :goto_0
.end method

.method private d()Lcom/crittercism/internal/c;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    invoke-interface {v0}, Lcom/crittercism/internal/z;->a()Lcom/crittercism/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public final a(Lcom/crittercism/internal/aa;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/crittercism/internal/c;->b(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/crittercism/internal/c;->b()V

    .line 1331
    iput-object p1, v0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 1397
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 1398
    iget-object v1, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    .line 2091
    if-eqz p2, :cond_0

    .line 2092
    iput-object p2, v1, Lcom/crittercism/internal/k;->c:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    invoke-interface {v1, v0}, Lcom/crittercism/internal/z;->a(Lcom/crittercism/internal/c;)V

    .line 120
    return-void
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/crittercism/internal/aj;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/aj;-><init>(Lcom/crittercism/internal/ah;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/c;->b(J)V

    .line 148
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    .line 177
    if-eqz v1, :cond_0

    .line 2327
    iget-object v0, v1, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 181
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 50
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 45
    return-void
.end method

.method public final write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/aa;->a(I)Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    throw v0

    .line 61
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 62
    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    goto :goto_0
.end method

.method public final write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 69
    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/crittercism/internal/l;->a([BII)V

    .line 80
    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/crittercism/internal/l;->a([BII)V

    .line 89
    :cond_0
    return-void
.end method
