.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunktEXt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "chunkType"    # I
    .param p3, "crc"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 33
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->findNull([B)I

    move-result v0

    .line 34
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 35
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "PNG tEXt chunk keyword is not terminated."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    .line 40
    array-length v2, p4

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    .line 41
    .local v1, "textLength":I
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p4, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngText$tEXt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    return-object v0
.end method
