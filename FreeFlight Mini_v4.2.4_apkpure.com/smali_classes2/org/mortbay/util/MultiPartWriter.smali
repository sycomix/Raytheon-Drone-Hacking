.class public Lorg/mortbay/util/MultiPartWriter;
.super Ljava/io/FilterWriter;
.source "MultiPartWriter.java"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String; = null

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String; = null

.field private static final __CRLF:Ljava/lang/String; = "\r\n"

.field private static final __DASHDASH:Ljava/lang/String; = "--"


# instance fields
.field private boundary:Ljava/lang/String;

.field private inPart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/MultiPartWriter;->MULTIPART_MIXED:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/MultiPartWriter;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    iput-boolean v4, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 48
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

    iput-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->boundary:Ljava/lang/String;

    .line 51
    iput-boolean v4, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 52
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
    .line 61
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 68
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    .line 69
    return-void
.end method

.method public endPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 104
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 93
    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "headers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-boolean v1, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/mortbay/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lorg/mortbay/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/util/MultiPartWriter;->inPart:Z

    .line 127
    return-void
.end method
