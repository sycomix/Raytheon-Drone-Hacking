.class public Lorg/apache/sanselan/ImageDump;
.super Ljava/lang/Object;
.source "ImageDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;
    .locals 1
    .param p1, "cs"    # Ljava/awt/color/ColorSpace;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 53
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 37
    :sswitch_0
    const-string v0, "TYPE_CMYK"

    goto :goto_0

    .line 39
    :sswitch_1
    const-string v0, "TYPE_RGB"

    goto :goto_0

    .line 42
    :sswitch_2
    const-string v0, "CS_sRGB"

    goto :goto_0

    .line 44
    :sswitch_3
    const-string v0, "CS_GRAY"

    goto :goto_0

    .line 46
    :sswitch_4
    const-string v0, "CS_CIEXYZ"

    goto :goto_0

    .line 48
    :sswitch_5
    const-string v0, "CS_LINEAR_RGB"

    goto :goto_0

    .line 50
    :sswitch_6
    const-string v0, "CS_PYCC"

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/awt/image/BufferedImage;)V
    .locals 1
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/sanselan/ImageDump;->dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    .line 83
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageDump;->dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ImageDump;->dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    .line 91
    return-void
.end method

.method public dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 95
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "keys":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 98
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": no props"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 103
    aget-object v1, v2, v0

    .line 104
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cs"    # Ljava/awt/color/ColorSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-direct {p0, p2}, Lorg/apache/sanselan/ImageDump;->colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    instance-of v5, p2, Ljava/awt/color/ICC_ColorSpace;

    if-nez v5, :cond_0

    .line 64
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "Unknown ColorSpace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    .line 69
    check-cast v1, Ljava/awt/color/ICC_ColorSpace;

    .line 70
    .local v1, "fICC_ColorSpace":Ljava/awt/color/ICC_ColorSpace;
    invoke-virtual {v1}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v2

    .line 72
    .local v2, "fICC_Profile":Ljava/awt/color/ICC_Profile;
    invoke-virtual {v2}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v0

    .line 74
    .local v0, "bytes":[B
    new-instance v4, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct {v4}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    .line 76
    .local v4, "parser":Lorg/apache/sanselan/icc/IccProfileParser;
    invoke-virtual {v4, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v3

    .line 77
    .local v3, "info":Lorg/apache/sanselan/icc/IccProfileInfo;
    invoke-virtual {v3, p1}, Lorg/apache/sanselan/icc/IccProfileInfo;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method
