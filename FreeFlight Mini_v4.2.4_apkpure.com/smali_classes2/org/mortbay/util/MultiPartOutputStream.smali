.class public Lorg/mortbay/util/MultiPartOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MultiPartOutputStream.java"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String;

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

.field private static __CRLF:[B

.field private static __DASHDASH:[B


# instance fields
.field private boundary:Ljava/lang/String;

.field private boundaryBytes:[B

.field private inPart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v1, "multipart/mixed"

    sput-object v1, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    .line 35
    const-string v1, "multipart/x-mixed-replace"

    sput-object v1, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    .line 40
    :try_start_0
    const-string v1, "\r\n"

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    .line 41
    const-string v1, "--"

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__DASHDASH:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    iput-boolean v4, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "jetty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x24

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    sget-object v1, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundaryBytes:[B

    .line 63
    iput-boolean v4, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 78
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    .line 82
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 83
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getOut()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    .line 102
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 108
    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "headers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 118
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->inPart:Z

    .line 119
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/mortbay/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 121
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 122
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 123
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    aget-object v2, p2, v0

    sget-object v3, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 127
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lorg/mortbay/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/mortbay/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 130
    return-void
.end method
