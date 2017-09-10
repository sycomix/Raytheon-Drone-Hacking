.class final Lorg/apache/sanselan/icc/IccConstants$1;
.super Lorg/apache/sanselan/icc/IccTagDataType;
.source "IccConstants.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/icc/IccTagDataType;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v4, 0x4d

    invoke-direct {v0, v3, v4}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    .local v0, "bis":Lorg/apache/sanselan/common/BinaryInputStream;
    const-string v3, "type_signature"

    const-string v4, "ICC: corrupt tag data"

    invoke-virtual {v0, v3, v4}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v3, "ignore"

    const-string v4, "ICC: corrupt tag data"

    invoke-virtual {v0, v3, v4}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v3, "string_length"

    const-string v4, "ICC: corrupt tag data"

    invoke-virtual {v0, v3, v4}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 50
    .local v2, "string_length":I
    new-instance v1, Ljava/lang/String;

    const/16 v3, 0xc

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v1, p2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 51
    .local v1, "s":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "s: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    return-void
.end method
